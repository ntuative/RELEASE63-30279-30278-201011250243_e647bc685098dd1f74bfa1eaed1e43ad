package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureCounterClockVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1200:String = "seconds_sprite";
      
      private static const const_1203:String = "ten_seconds_sprite";
      
      private static const const_1202:String = "minutes_sprite";
      
      private static const const_1201:String = "ten_minutes_sprite";
       
      
      public function FurnitureCounterClockVisualization()
      {
         super();
      }
      
      override public function get animationId() : int
      {
         return 0;
      }
      
      override protected function getFrameNumber(param1:int, param2:int) : int
      {
         var _loc3_:String = getSpriteTag(param1,_direction,param2);
         var _loc4_:int = super.animationId;
         switch(_loc3_)
         {
            case const_1200:
               return _loc4_ % 60 % 10;
            case const_1203:
               return _loc4_ % 60 / 10;
            case const_1202:
               return _loc4_ / 60 % 10;
            case const_1201:
               return _loc4_ / 60 / 10 % 10;
            default:
               return super.getFrameNumber(param1,param2);
         }
      }
   }
}