package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_588:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var _userId:int;
      
      private var var_553:String;
      
      private var var_819:String;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_588,param4,param5);
         this._userId = param1;
         this.var_553 = param2;
         this.var_819 = param3;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_553;
      }
      
      public function get gender() : String
      {
         return this.var_819;
      }
   }
}
