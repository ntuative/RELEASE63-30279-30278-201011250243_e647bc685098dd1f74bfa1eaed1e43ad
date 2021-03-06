package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_244:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_220:String = "RWUIUE_PEER";
      
      public static const const_1300:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_881:int = 2;
      
      public static const const_905:int = 3;
      
      public static const const_1349:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1418:String = "";
      
      private var var_2129:int;
      
      private var var_2300:int = 0;
      
      private var var_2310:int = 0;
      
      private var var_553:String = "";
      
      private var var_37:BitmapData = null;
      
      private var var_234:Array;
      
      private var var_1232:int = 0;
      
      private var var_2232:String = "";
      
      private var var_2230:int = 0;
      
      private var var_2231:int = 0;
      
      private var var_1468:Boolean = false;
      
      private var var_1417:String = "";
      
      private var var_2306:Boolean = false;
      
      private var var_2301:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2309:Boolean = false;
      
      private var var_2307:Boolean = false;
      
      private var var_2308:Boolean = false;
      
      private var var_2305:Boolean = false;
      
      private var var_2302:Boolean = false;
      
      private var var_2304:Boolean = false;
      
      private var var_2303:int = 0;
      
      private var var_1470:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_234 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1418 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1418;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2129 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2129;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2300 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2300;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2310 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2310;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_553 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_553;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_37 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_37;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_234 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_234;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1232 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1232;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2232 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2232;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2306 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2306;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set method_4(param1:Boolean) : void
      {
         this.var_2309 = param1;
      }
      
      public function get method_4() : Boolean
      {
         return this.var_2309;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2307 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2307;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2308 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2308;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2305 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2305;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2302 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2302;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2304 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2304;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2303 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2303;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2301 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2301;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1470 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1470;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2230 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2230;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2231 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2231;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1468 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1468;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1417 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1417;
      }
   }
}
