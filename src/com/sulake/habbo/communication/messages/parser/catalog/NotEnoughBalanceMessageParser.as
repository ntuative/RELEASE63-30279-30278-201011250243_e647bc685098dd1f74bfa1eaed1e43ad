package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1598:int = 0;
      
      private var var_1599:int = 0;
      
      private var var_1423:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1598;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1599;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1423;
      }
      
      public function flush() : Boolean
      {
         this.var_1598 = 0;
         this.var_1599 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1598 = param1.readInteger();
         this.var_1599 = param1.readInteger();
         this.var_1423 = param1.readInteger();
         return true;
      }
   }
}
