package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_300:int;
      
      private var var_712:Boolean;
      
      private var var_833:String;
      
      private var _ownerName:String;
      
      private var var_2195:int;
      
      private var var_1995:int;
      
      private var var_2270:int;
      
      private var var_1421:String;
      
      private var var_2268:int;
      
      private var var_2269:Boolean;
      
      private var var_494:int;
      
      private var var_1305:int;
      
      private var var_2267:String;
      
      private var var_754:Array;
      
      private var var_2271:RoomThumbnailData;
      
      private var var_2197:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_754 = new Array();
         super();
         this.var_300 = param1.readInteger();
         this.var_712 = param1.readBoolean();
         this.var_833 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2195 = param1.readInteger();
         this.var_1995 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         this.var_1421 = param1.readString();
         this.var_2268 = param1.readInteger();
         this.var_2269 = param1.readBoolean();
         this.var_494 = param1.readInteger();
         this.var_1305 = param1.readInteger();
         this.var_2267 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_754.push(_loc4_);
            _loc3_++;
         }
         this.var_2271 = new RoomThumbnailData(param1);
         this.var_2197 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_754 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_300;
      }
      
      public function get event() : Boolean
      {
         return this.var_712;
      }
      
      public function get roomName() : String
      {
         return this.var_833;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2195;
      }
      
      public function get userCount() : int
      {
         return this.var_1995;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2270;
      }
      
      public function get description() : String
      {
         return this.var_1421;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2268;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2269;
      }
      
      public function get score() : int
      {
         return this.var_494;
      }
      
      public function get categoryId() : int
      {
         return this.var_1305;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2267;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2271;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2197;
      }
   }
}
