package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_862:RoomObjectLocationCacheItem = null;
      
      private var var_180:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_862 = new RoomObjectLocationCacheItem(param1);
         this.var_180 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_862;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_180;
      }
      
      public function dispose() : void
      {
         if(this.var_862 != null)
         {
            this.var_862.dispose();
            this.var_862 = null;
         }
         if(this.var_180 != null)
         {
            this.var_180.dispose();
            this.var_180 = null;
         }
      }
   }
}
