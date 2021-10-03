package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1257:Boolean;
      
      private var var_1911:int;
      
      private var var_1677:int;
      
      private var var_1676:int;
      
      private var var_1913:int;
      
      private var var_1914:int;
      
      private var var_1915:int;
      
      private var var_1912:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1257;
      }
      
      public function get commission() : int
      {
         return this.var_1911;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1677;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1676;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_1914;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_1913;
      }
      
      public function get expirationHours() : int
      {
         return this.var_1915;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_1912;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1257 = param1.readBoolean();
         this.var_1911 = param1.readInteger();
         this.var_1677 = param1.readInteger();
         this.var_1676 = param1.readInteger();
         this.var_1914 = param1.readInteger();
         this.var_1913 = param1.readInteger();
         this.var_1915 = param1.readInteger();
         this.var_1912 = param1.readInteger();
         return true;
      }
   }
}
