package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1889:int;
      
      private var var_1886:int;
      
      private var var_1888:int;
      
      private var _dayOffsets:Array;
      
      private var var_1803:Array;
      
      private var var_1804:Array;
      
      private var var_1890:int;
      
      private var var_1887:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_1889 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1886 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_1888 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1803 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1804 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_1890 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_1887 = param1;
      }
   }
}
