package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_146:int = 1;
      
      public static const const_342:int = 2;
      
      public static const const_1411:int = 3;
       
      
      private var var_2019:int;
      
      private var _state:int;
      
      private var var_1305:int;
      
      private var var_2296:int;
      
      private var var_1429:int;
      
      private var var_2297:int;
      
      private var var_2290:int = 0;
      
      private var var_2298:int;
      
      private var var_2291:String;
      
      private var var_1275:int;
      
      private var var_1607:String;
      
      private var var_2299:int;
      
      private var var_2293:String;
      
      private var _message:String;
      
      private var var_2295:int;
      
      private var var_833:String;
      
      private var var_1734:int;
      
      private var var_2292:String;
      
      private var var_300:int;
      
      private var var_2294:String;
      
      private var var_1968:String;
      
      private var var_1950:int;
      
      private var var_1951:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2019;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1305;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2296;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1429;
      }
      
      public function get priority() : int
      {
         return this.var_2297 + this.var_2290;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2298;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2291;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1275;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1607;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2299;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2293;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2295;
      }
      
      public function get roomName() : String
      {
         return this.var_833;
      }
      
      public function get roomType() : int
      {
         return this.var_1734;
      }
      
      public function get flatType() : String
      {
         return this.var_2292;
      }
      
      public function get flatId() : int
      {
         return this.var_300;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2294;
      }
      
      public function get roomResources() : String
      {
         return this.var_1968;
      }
      
      public function get unitPort() : int
      {
         return this.var_1950;
      }
      
      public function get worldId() : int
      {
         return this.var_1951;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2019 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1305 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2296 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1429 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2297 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2290 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2298 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2291 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1275 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1607 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_2299 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2293 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_2295 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_833 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1734 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2292 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_300 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2294 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_1968 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_1950 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_1951 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1429) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
