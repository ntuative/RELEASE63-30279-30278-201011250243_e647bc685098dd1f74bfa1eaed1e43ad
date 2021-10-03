package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1600:String;
      
      private var var_1793:int;
      
      private var var_2100:Boolean;
      
      private var var_2104:Boolean;
      
      private var var_2105:int;
      
      private var var_2102:int;
      
      private var var_376:ICatalogPage;
      
      private var var_2099:int;
      
      private var var_2103:int;
      
      private var var_2101:int;
      
      private var var_2525:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1600 = param2;
         this.var_1793 = param3;
         this.var_2100 = param4;
         this.var_2104 = param5;
         this.var_2105 = param6;
         this.var_2102 = param7;
         this.var_2099 = param8;
         this.var_2103 = param9;
         this.var_2101 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_406;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1793;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_376;
      }
      
      public function get priceType() : String
      {
         return Offer.const_419;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1600;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_376 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2525;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2525 = param1;
      }
   }
}
