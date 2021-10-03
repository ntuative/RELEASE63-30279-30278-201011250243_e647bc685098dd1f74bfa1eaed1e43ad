package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_724:TileHeightMap = null;
      
      private var var_1122:LegacyWallGeometry = null;
      
      private var var_1123:RoomCamera = null;
      
      private var var_725:SelectedRoomObjectData = null;
      
      private var var_726:SelectedRoomObjectData = null;
      
      private var var_2513:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1122 = new LegacyWallGeometry();
         this.var_1123 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_724;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_724 != null)
         {
            this.var_724.dispose();
         }
         this.var_724 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1122;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1123;
      }
      
      public function get worldType() : String
      {
         return this.var_2513;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2513 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_725;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_725 != null)
         {
            this.var_725.dispose();
         }
         this.var_725 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_726;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_726 != null)
         {
            this.var_726.dispose();
         }
         this.var_726 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_724 != null)
         {
            this.var_724.dispose();
            this.var_724 = null;
         }
         if(this.var_1122 != null)
         {
            this.var_1122.dispose();
            this.var_1122 = null;
         }
         if(this.var_1123 != null)
         {
            this.var_1123.dispose();
            this.var_1123 = null;
         }
         if(this.var_725 != null)
         {
            this.var_725.dispose();
            this.var_725 = null;
         }
         if(this.var_726 != null)
         {
            this.var_726.dispose();
            this.var_726 = null;
         }
      }
   }
}
