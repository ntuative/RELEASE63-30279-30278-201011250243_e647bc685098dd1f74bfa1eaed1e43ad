package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_830:int = 20;
      
      private static const const_550:int = 10;
      
      private static const const_1174:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_277:Array;
      
      private var var_702:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_277 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_702)
            {
               this.var_702 = true;
               this.var_277 = new Array();
               this.var_277.push(const_1174);
               this.var_277.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_550)
         {
            if(this.var_702)
            {
               this.var_702 = false;
               this.var_277 = new Array();
               if(_direction == 2)
               {
                  this.var_277.push(const_830 + 5 - param1);
                  this.var_277.push(const_550 + 5 - param1);
               }
               else
               {
                  this.var_277.push(const_830 + param1);
                  this.var_277.push(const_550 + param1);
               }
               this.var_277.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
