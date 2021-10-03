package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1225:int;
      
      private var var_1224:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1225 = this.var_1225;
         _loc1_.var_1224 = this.var_1224;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1225 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1224 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1225;
      }
      
      public function get imgId() : int
      {
         return this.var_1224;
      }
   }
}
