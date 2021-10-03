package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1889:int;
      
      private var var_1886:int;
      
      private var var_1888:int;
      
      private var _dayOffsets:Array;
      
      private var var_1803:Array;
      
      private var var_1804:Array;
      
      private var var_1890:int;
      
      private var var_1887:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_1889;
      }
      
      public function get offerCount() : int
      {
         return this.var_1886;
      }
      
      public function get historyLength() : int
      {
         return this.var_1888;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1803;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1804;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_1890;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_1887;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1889 = param1.readInteger();
         this.var_1886 = param1.readInteger();
         this.var_1888 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1803 = [];
         this.var_1804 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1803.push(param1.readInteger());
            this.var_1804.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1887 = param1.readInteger();
         this.var_1890 = param1.readInteger();
         return true;
      }
   }
}
