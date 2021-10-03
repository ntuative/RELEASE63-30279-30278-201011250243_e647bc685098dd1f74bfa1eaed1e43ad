package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_413:WallRasterizer;
      
      private var var_411:FloorRasterizer;
      
      private var var_618:WallAdRasterizer;
      
      private var var_412:LandscapeRasterizer;
      
      private var var_617:PlaneMaskManager;
      
      private var var_723:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_413 = new WallRasterizer();
         this.var_411 = new FloorRasterizer();
         this.var_618 = new WallAdRasterizer();
         this.var_412 = new LandscapeRasterizer();
         this.var_617 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_723;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_411;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_413;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_618;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_412;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_617;
      }
      
      public function dispose() : void
      {
         if(this.var_413 != null)
         {
            this.var_413.dispose();
            this.var_413 = null;
         }
         if(this.var_411 != null)
         {
            this.var_411.dispose();
            this.var_411 = null;
         }
         if(this.var_618 != null)
         {
            this.var_618.dispose();
            this.var_618 = null;
         }
         if(this.var_412 != null)
         {
            this.var_412.dispose();
            this.var_412 = null;
         }
         if(this.var_617 != null)
         {
            this.var_617.dispose();
            this.var_617 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_413 != null)
         {
            this.var_413.clearCache();
         }
         if(this.var_411 != null)
         {
            this.var_411.clearCache();
         }
         if(this.var_412 != null)
         {
            this.var_412.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_413.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_411.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_618.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_412.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_617.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_723)
         {
            return;
         }
         this.var_413.initializeAssetCollection(param1);
         this.var_411.initializeAssetCollection(param1);
         this.var_618.initializeAssetCollection(param1);
         this.var_412.initializeAssetCollection(param1);
         this.var_617.initializeAssetCollection(param1);
         this.var_723 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
