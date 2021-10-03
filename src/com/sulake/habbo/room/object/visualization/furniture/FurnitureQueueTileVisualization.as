package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1204:int = 2;
      
      private static const const_1205:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_277:Array;
      
      private var var_1101:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_277 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1204)
         {
            this.var_277 = new Array();
            this.var_277.push(const_1205);
            this.var_1101 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1101 > 0)
         {
            --this.var_1101;
         }
         if(this.var_1101 == 0)
         {
            if(this.var_277.length > 0)
            {
               super.setAnimation(this.var_277.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
