package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1000:String = "select_outfit";
       
      
      private var var_2183:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1000);
         this.var_2183 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2183;
      }
   }
}
