package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_772:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1421:String = "";
      
      private var var_37:BitmapData = null;
      
      private var var_2548:Boolean = false;
      
      private var var_2547:Boolean = false;
      
      private var var_1470:Boolean = false;
      
      private var var_1469:Boolean = false;
      
      private var var_2155:Boolean = false;
      
      private var var_1495:int = -1;
      
      private var var_2361:int = -1;
      
      private var _offerId:int = -1;
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1421 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1421;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_37 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_37;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2548 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2548;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2547 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2547;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1470 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1470;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_1469 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_1469;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2155 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2155;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_1495 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_1495;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2361 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2361;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
   }
}
