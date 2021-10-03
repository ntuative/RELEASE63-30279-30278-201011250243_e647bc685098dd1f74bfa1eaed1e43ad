package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class SessionCreditBalanceEvent extends Event
   {
      
      public static const const_176:String = "session_credit_balance";
       
      
      private var var_2056:int;
      
      public function SessionCreditBalanceEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_176,param2,param3);
         this.var_2056 = param1;
      }
      
      public function get credits() : int
      {
         return this.var_2056;
      }
   }
}
