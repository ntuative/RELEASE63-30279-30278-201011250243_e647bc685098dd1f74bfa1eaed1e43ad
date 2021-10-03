package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_63:String = "RWPDUE_PACKAGEINFO";
      
      public static const const_85:String = "RWPDUE_CONTENTS";
      
      public static const const_432:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_433:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_512:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_457:String = "RWPDUE_CONTENTS_WALLPAPER";
       
      
      private var var_305:int = -1;
      
      private var _text:String;
      
      private var _controller:Boolean;
      
      private var var_1882:BitmapData;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_305 = param2;
         this._text = param3;
         this._controller = param4;
         this.var_1882 = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_305;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get controller() : Boolean
      {
         return this._controller;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return this.var_1882;
      }
   }
}
