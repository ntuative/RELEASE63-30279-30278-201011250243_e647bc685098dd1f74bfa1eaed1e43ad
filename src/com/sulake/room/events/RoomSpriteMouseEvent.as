package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1711:String = "";
      
      private var var_2043:String = "";
      
      private var var_2045:String = "";
      
      private var var_2050:Number = 0;
      
      private var var_2049:Number = 0;
      
      private var var_2052:Number = 0;
      
      private var var_2051:Number = 0;
      
      private var var_2047:Boolean = false;
      
      private var var_2044:Boolean = false;
      
      private var var_2046:Boolean = false;
      
      private var var_2048:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1711 = param2;
         this.var_2043 = param3;
         this.var_2045 = param4;
         this.var_2050 = param5;
         this.var_2049 = param6;
         this.var_2052 = param7;
         this.var_2051 = param8;
         this.var_2047 = param9;
         this.var_2044 = param10;
         this.var_2046 = param11;
         this.var_2048 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1711;
      }
      
      public function get canvasId() : String
      {
         return this.var_2043;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2045;
      }
      
      public function get screenX() : Number
      {
         return this.var_2050;
      }
      
      public function get screenY() : Number
      {
         return this.var_2049;
      }
      
      public function get localX() : Number
      {
         return this.var_2052;
      }
      
      public function get localY() : Number
      {
         return this.var_2051;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2047;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2044;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2046;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2048;
      }
   }
}
