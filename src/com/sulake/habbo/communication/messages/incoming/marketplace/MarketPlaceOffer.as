package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2367:int;
      
      private var var_1858:String;
      
      private var var_1793:int;
      
      private var var_344:int;
      
      private var var_2368:int = -1;
      
      private var var_1889:int;
      
      private var var_1794:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2367 = param3;
         this.var_1858 = param4;
         this.var_1793 = param5;
         this.var_344 = param6;
         this.var_2368 = param7;
         this.var_1889 = param8;
         this.var_1794 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2367;
      }
      
      public function get stuffData() : String
      {
         return this.var_1858;
      }
      
      public function get price() : int
      {
         return this.var_1793;
      }
      
      public function get status() : int
      {
         return this.var_344;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2368;
      }
      
      public function get averagePrice() : int
      {
         return this.var_1889;
      }
      
      public function get offerCount() : int
      {
         return this.var_1794;
      }
   }
}
