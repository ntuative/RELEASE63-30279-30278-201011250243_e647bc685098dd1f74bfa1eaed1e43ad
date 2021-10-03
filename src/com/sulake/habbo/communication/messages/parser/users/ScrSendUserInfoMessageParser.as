package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1561:int = 1;
      
      public static const const_1265:int = 2;
       
      
      private var var_817:String;
      
      private var var_2406:int;
      
      private var var_2408:int;
      
      private var var_2405:int;
      
      private var var_2399:int;
      
      private var var_2401:Boolean;
      
      private var var_2325:Boolean;
      
      private var var_2407:int;
      
      private var var_2402:int;
      
      private var var_2400:Boolean;
      
      private var var_2403:int;
      
      private var var_2404:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_817 = param1.readString();
         this.var_2406 = param1.readInteger();
         this.var_2408 = param1.readInteger();
         this.var_2405 = param1.readInteger();
         this.var_2399 = param1.readInteger();
         this.var_2401 = param1.readBoolean();
         this.var_2325 = param1.readBoolean();
         this.var_2407 = param1.readInteger();
         this.var_2402 = param1.readInteger();
         this.var_2400 = param1.readBoolean();
         this.var_2403 = param1.readInteger();
         this.var_2404 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_817;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2406;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2408;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2405;
      }
      
      public function get responseType() : int
      {
         return this.var_2399;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2401;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2325;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2407;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2402;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2400;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2403;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2404;
      }
   }
}
