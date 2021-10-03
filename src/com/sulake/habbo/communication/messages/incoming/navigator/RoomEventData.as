package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_944:Boolean;
      
      private var var_1907:int;
      
      private var var_1906:String;
      
      private var var_300:int;
      
      private var var_1905:int;
      
      private var var_1908:String;
      
      private var var_1910:String;
      
      private var var_1909:String;
      
      private var var_754:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_754 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_944 = false;
            return;
         }
         this.var_944 = true;
         this.var_1907 = int(_loc2_);
         this.var_1906 = param1.readString();
         this.var_300 = int(param1.readString());
         this.var_1905 = param1.readInteger();
         this.var_1908 = param1.readString();
         this.var_1910 = param1.readString();
         this.var_1909 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_754.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_754 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_1907;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_1906;
      }
      
      public function get flatId() : int
      {
         return this.var_300;
      }
      
      public function get eventType() : int
      {
         return this.var_1905;
      }
      
      public function get eventName() : String
      {
         return this.var_1908;
      }
      
      public function get eventDescription() : String
      {
         return this.var_1910;
      }
      
      public function get creationTime() : String
      {
         return this.var_1909;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function get exists() : Boolean
      {
         return this.var_944;
      }
   }
}
