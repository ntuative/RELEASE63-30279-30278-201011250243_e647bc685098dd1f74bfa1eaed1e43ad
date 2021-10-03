package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1785:int = 0;
      
      private var var_1786:int = 0;
      
      private var var_2324:int = 0;
      
      private var var_2323:Boolean = false;
      
      private var var_2325:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1785 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1786 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2324 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2323 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2325 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1785;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1786;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2324;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2323;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2325;
      }
   }
}
