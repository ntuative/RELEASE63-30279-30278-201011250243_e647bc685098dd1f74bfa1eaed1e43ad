package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1518:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_174:MsgWithRequestId;
      
      private var var_533:RoomEventData;
      
      private var var_2016:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_1973:int;
      
      private var var_220:GuestRoomData;
      
      private var var_795:PublicRoomShortData;
      
      private var var_2013:int;
      
      private var var_2011:Boolean;
      
      private var var_2015:int;
      
      private var var_2010:Boolean;
      
      private var var_1502:int;
      
      private var var_2014:Boolean;
      
      private var var_1214:Array;
      
      private var var_1215:Array;
      
      private var var_2017:int;
      
      private var var_1213:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_970:Boolean;
      
      private var var_2012:int;
      
      private var var_2018:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1214 = new Array();
         this.var_1215 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_220 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_220 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_795 = null;
         this.var_220 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_795 = param1.publicSpace;
            this.var_533 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_533 != null)
         {
            this.var_533.dispose();
            this.var_533 = null;
         }
         if(this.var_795 != null)
         {
            this.var_795.dispose();
            this.var_795 = null;
         }
         if(this.var_220 != null)
         {
            this.var_220.dispose();
            this.var_220 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_220 != null)
         {
            this.var_220.dispose();
         }
         this.var_220 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_533 != null)
         {
            this.var_533.dispose();
         }
         this.var_533 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_174 != null && this.var_174 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_174 != null && this.var_174 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_174 != null && this.var_174 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_174 = param1;
         this.var_970 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_174 = param1;
         this.var_970 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_174 = param1;
         this.var_970 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_174 == null)
         {
            return;
         }
         this.var_174.dispose();
         this.var_174 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_174 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_174 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_174 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_533;
      }
      
      public function get avatarId() : int
      {
         return this.var_1973;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2016;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_220;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_795;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2011;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2015;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1502;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2010;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2012;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2013;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2014;
      }
      
      public function get adIndex() : int
      {
         return this.var_2018;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_1973 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2015 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2011 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2016 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2010 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1502 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2012 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2013 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2014 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2018 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1214 = param1;
         this.var_1215 = new Array();
         for each(_loc2_ in this.var_1214)
         {
            if(_loc2_.visible)
            {
               this.var_1215.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1214;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1215;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2017 = param1.limit;
         this.var_1213 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1213 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_220.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_220 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_220.flatId;
         return this.var_1502 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1213 >= this.var_2017;
      }
      
      public function startLoading() : void
      {
         this.var_970 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_970;
      }
   }
}
