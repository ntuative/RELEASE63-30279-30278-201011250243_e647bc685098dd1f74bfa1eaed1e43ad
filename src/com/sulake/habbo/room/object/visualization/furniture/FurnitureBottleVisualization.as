package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_830:int = 20;
      
      private static const const_550:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_277:Array;
      
      private var var_702:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_277 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_702)
            {
               this.var_702 = true;
               this.var_277 = new Array();
               this.var_277.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_702)
            {
               this.var_702 = false;
               this.var_277 = new Array();
               this.var_277.push(const_830);
               this.var_277.push(const_550 + param1);
               this.var_277.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
