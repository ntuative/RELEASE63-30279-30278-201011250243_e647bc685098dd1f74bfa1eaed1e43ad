package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_647:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_920:int = 0;
      
      public static const const_1454:Array = [2,3,4];
       
      
      private var var_77:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_647);
         this.var_77 = param1;
      }
      
      public function get style() : int
      {
         return this.var_77;
      }
   }
}
