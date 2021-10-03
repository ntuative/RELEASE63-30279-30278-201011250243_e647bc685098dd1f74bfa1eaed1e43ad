package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_406:int = 0;
       
      
      private var var_2056:int = 0;
      
      private var var_1370:Dictionary;
      
      private var var_1785:int = 0;
      
      private var var_1786:int = 0;
      
      private var var_2325:Boolean = false;
      
      private var var_2407:int = 0;
      
      private var var_2402:int = 0;
      
      public function Purse()
      {
         this.var_1370 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2056;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2056 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1785;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1785 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1786;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1786 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1785 > 0 || this.var_1786 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2325;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2325 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2407;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2407 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2402;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2402 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1370;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1370 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1370[param1];
      }
   }
}
