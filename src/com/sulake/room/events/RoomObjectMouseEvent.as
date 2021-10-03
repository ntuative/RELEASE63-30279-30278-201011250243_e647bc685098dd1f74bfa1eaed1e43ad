package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_247:String = "ROE_MOUSE_CLICK";
      
      public static const const_1550:String = "ROE_MOUSE_ENTER";
      
      public static const const_479:String = "ROE_MOUSE_MOVE";
      
      public static const const_1728:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1594:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1711:String = "";
      
      private var var_2044:Boolean;
      
      private var var_2047:Boolean;
      
      private var var_2046:Boolean;
      
      private var var_2048:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1711 = param2;
         this.var_2044 = param5;
         this.var_2047 = param6;
         this.var_2046 = param7;
         this.var_2048 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1711;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2044;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2047;
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
