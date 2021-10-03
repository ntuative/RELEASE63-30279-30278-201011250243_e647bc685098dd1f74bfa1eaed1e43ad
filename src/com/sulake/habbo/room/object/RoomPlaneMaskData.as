package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1986:Number = 0.0;
      
      private var var_1987:Number = 0.0;
      
      private var var_2226:Number = 0.0;
      
      private var var_2227:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_1986 = param1;
         this.var_1987 = param2;
         this.var_2226 = param3;
         this.var_2227 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_1986;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_1987;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2226;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2227;
      }
   }
}
