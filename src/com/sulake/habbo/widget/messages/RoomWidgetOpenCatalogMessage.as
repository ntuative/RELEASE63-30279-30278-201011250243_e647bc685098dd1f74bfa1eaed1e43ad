package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_764:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_885:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2392:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_764);
         this.var_2392 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2392;
      }
   }
}
