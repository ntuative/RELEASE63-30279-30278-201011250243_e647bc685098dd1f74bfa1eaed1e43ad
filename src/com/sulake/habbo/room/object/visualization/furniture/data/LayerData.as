package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_687:String = "";
      
      public static const const_514:int = 0;
      
      public static const const_455:int = 255;
      
      public static const const_612:Boolean = false;
      
      public static const const_441:int = 0;
      
      public static const const_480:int = 0;
      
      public static const const_482:int = 0;
      
      public static const const_1092:int = 1;
      
      public static const const_1075:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_1996:String = "";
      
      private var var_1798:int = 0;
      
      private var var_2119:int = 255;
      
      private var var_2532:Boolean = false;
      
      private var var_2531:int = 0;
      
      private var var_2529:int = 0;
      
      private var var_2530:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1996 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_1996;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1798 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1798;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2119 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2119;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2532 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2532;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2531 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2531;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2529 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2529;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2530 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2530;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
