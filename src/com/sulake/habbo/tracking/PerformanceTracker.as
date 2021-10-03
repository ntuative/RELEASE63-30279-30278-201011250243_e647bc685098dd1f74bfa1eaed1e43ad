package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_164:IHabboConfigurationManager = null;
      
      private var var_507:int = 0;
      
      private var var_491:Number = 0;
      
      private var var_2635:Array;
      
      private var var_1390:String = "";
      
      private var var_1812:String = "";
      
      private var var_2188:String = "";
      
      private var var_2186:String = "";
      
      private var var_1625:Boolean = false;
      
      private var var_1816:GarbageMonitor = null;
      
      private var var_1387:int = 0;
      
      private var var_1815:int = 1000;
      
      private var var_1388:int = 0;
      
      private var var_1814:int = 60;
      
      private var var_1453:int = 0;
      
      private var var_1813:int = 10;
      
      private var var_1389:int = 0;
      
      private var var_2553:Number = 0.15;
      
      private var var_2551:Boolean = true;
      
      private var var_2552:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2635 = [];
         super();
         this.var_1812 = Capabilities.version;
         this.var_2188 = Capabilities.os;
         this.var_1625 = Capabilities.isDebugger;
         this.var_1390 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1390 == null)
         {
            this.var_1390 = "unknown";
         }
         this.var_1816 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1453 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1812;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_491;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1815 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this.var_1814 = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1813 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_164 = param1;
         this.var_1814 = int(this.var_164.getKey("performancetest.interval","60"));
         this.var_1815 = int(this.var_164.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1813 = int(this.var_164.getKey("performancetest.reportlimit","10"));
         this.var_2553 = Number(this.var_164.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2551 = Boolean(int(this.var_164.getKey("performancetest.distribution.enabled","1")));
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1816.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1816.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = this.updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++this.var_1387;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1815)
         {
            ++this.var_1388;
            _loc3_ = true;
         }
         else
         {
            ++this.var_507;
            if(this.var_507 <= 1)
            {
               this.var_491 = param1;
            }
            else
            {
               _loc4_ = Number(this.var_507);
               this.var_491 = this.var_491 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - this.var_1453 > this.var_1814 * 1000 && this.var_1389 < this.var_1813)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_491);
            _loc5_ = true;
            if(this.var_2551 && this.var_1389 > 0)
            {
               _loc6_ = this.differenceInPercents(this.var_2552,this.var_491);
               if(_loc6_ < this.var_2553)
               {
                  _loc5_ = false;
               }
            }
            this.var_1453 = getTimer();
            if(_loc5_ || _loc3_)
            {
               this.var_2552 = this.var_491;
               if(this.sendReport())
               {
                  ++this.var_1389;
               }
            }
         }
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,this.var_1390,this.var_1812,this.var_2188,this.var_2186,this.var_1625,_loc4_,_loc3_,this.var_1387,this.var_491,this.var_1388);
            this._connection.send(_loc1_);
            this.var_1387 = 0;
            this.var_491 = 0;
            this.var_507 = 0;
            this.var_1388 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
