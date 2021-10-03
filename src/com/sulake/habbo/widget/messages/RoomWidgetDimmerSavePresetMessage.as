package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_571:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2490:int;
      
      private var var_2487:int;
      
      private var _color:uint;
      
      private var var_1079:int;
      
      private var var_2524:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_571);
         this.var_2490 = param1;
         this.var_2487 = param2;
         this._color = param3;
         this.var_1079 = param4;
         this.var_2524 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2490;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2487;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1079;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2524;
      }
   }
}
