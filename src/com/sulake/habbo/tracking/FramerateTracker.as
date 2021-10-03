package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1453:int;
      
      private var var_1939:int;
      
      private var var_948:int;
      
      private var var_491:Number;
      
      private var var_1938:Boolean;
      
      private var var_1940:int;
      
      private var var_1452:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1939 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_1940 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_1938 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_948;
         var _loc3_:int = getTimer();
         if(this.var_948 == 1)
         {
            this.var_491 = param1;
            this.var_1453 = _loc3_;
         }
         else
         {
            _loc4_ = Number(this.var_948);
            this.var_491 = this.var_491 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_1938 && _loc3_ - this.var_1453 >= this.var_1939 && this.var_1452 < this.var_1940)
         {
            _loc5_ = 1000 / this.var_491;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1452;
            this.var_1453 = _loc3_;
            this.var_948 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
