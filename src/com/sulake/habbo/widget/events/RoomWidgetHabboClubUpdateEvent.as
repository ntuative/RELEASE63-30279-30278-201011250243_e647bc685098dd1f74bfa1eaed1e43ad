package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_216:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2433:int = 0;
      
      private var var_2435:int = 0;
      
      private var var_2434:int = 0;
      
      private var var_2432:Boolean = false;
      
      private var var_1921:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_216,param6,param7);
         this.var_2433 = param1;
         this.var_2435 = param2;
         this.var_2434 = param3;
         this.var_2432 = param4;
         this.var_1921 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2433;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2435;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2434;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2432;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1921;
      }
   }
}
