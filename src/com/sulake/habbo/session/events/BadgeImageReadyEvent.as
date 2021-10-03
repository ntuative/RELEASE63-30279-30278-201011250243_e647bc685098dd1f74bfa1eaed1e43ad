package com.sulake.habbo.session.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class BadgeImageReadyEvent extends Event
   {
      
      public static const const_137:String = "BIRE_BADGE_IMAGE_READY";
       
      
      private var var_256:String;
      
      private var var_37:BitmapData;
      
      public function BadgeImageReadyEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_137,param3,param4);
         this.var_256 = param1;
         this.var_37 = param2;
      }
      
      public function get badgeId() : String
      {
         return this.var_256;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_37;
      }
   }
}
