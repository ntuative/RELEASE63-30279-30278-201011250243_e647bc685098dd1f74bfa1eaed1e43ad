package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1600:String;
      
      private var var_1793:int;
      
      private var var_2100:Boolean;
      
      private var var_2104:Boolean;
      
      private var var_2105:int;
      
      private var var_2102:int;
      
      private var var_2099:int;
      
      private var var_2103:int;
      
      private var var_2101:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1600 = param1.readString();
         this.var_1793 = param1.readInteger();
         this.var_2100 = param1.readBoolean();
         this.var_2104 = param1.readBoolean();
         this.var_2105 = param1.readInteger();
         this.var_2102 = param1.readInteger();
         this.var_2099 = param1.readInteger();
         this.var_2103 = param1.readInteger();
         this.var_2101 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1600;
      }
      
      public function get price() : int
      {
         return this.var_1793;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2100;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2104;
      }
      
      public function get periods() : int
      {
         return this.var_2105;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2102;
      }
      
      public function get year() : int
      {
         return this.var_2099;
      }
      
      public function get month() : int
      {
         return this.var_2103;
      }
      
      public function get day() : int
      {
         return this.var_2101;
      }
   }
}
