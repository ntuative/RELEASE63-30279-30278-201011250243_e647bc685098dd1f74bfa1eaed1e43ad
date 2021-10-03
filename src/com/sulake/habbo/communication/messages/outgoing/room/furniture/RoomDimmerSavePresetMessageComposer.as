package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2490:int;
      
      private var var_2487:int;
      
      private var var_2488:String;
      
      private var var_2489:int;
      
      private var var_2486:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2490 = param1;
         this.var_2487 = param2;
         this.var_2488 = param3;
         this.var_2489 = param4;
         this.var_2486 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2490,this.var_2487,this.var_2488,this.var_2489,int(this.var_2486)];
      }
      
      public function dispose() : void
      {
      }
   }
}
