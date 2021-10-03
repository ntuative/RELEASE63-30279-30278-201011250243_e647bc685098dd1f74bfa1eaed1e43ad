package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2275:Number;
      
      private var var_2276:Number;
      
      private var var_861:Number;
      
      private var var_862:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2275 = param1;
         this.var_2276 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_861 = param1;
         this.var_862 = 0;
      }
      
      public function update() : void
      {
         this.var_861 += this.var_2276;
         this.var_862 += this.var_861;
         if(this.var_862 > 0)
         {
            this.var_862 = 0;
            this.var_861 = this.var_2275 * -1 * this.var_861;
         }
      }
      
      public function get location() : Number
      {
         return this.var_862;
      }
   }
}
