package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1310:String = "pricing_model_unknown";
      
      public static const const_511:String = "pricing_model_single";
      
      public static const const_492:String = "pricing_model_multi";
      
      public static const const_495:String = "pricing_model_bundle";
      
      public static const const_1068:String = "price_type_none";
      
      public static const const_419:String = "price_type_credits";
      
      public static const const_767:String = "price_type_activitypoints";
      
      public static const const_699:String = "price_type_credits_and_activitypoints";
       
      
      private var var_666:String;
      
      private var var_1034:String;
      
      private var _offerId:int;
      
      private var var_1632:String;
      
      private var var_1032:int;
      
      private var var_1033:int;
      
      private var var_1423:int;
      
      private var var_376:ICatalogPage;
      
      private var var_665:IProductContainer;
      
      private var var_2205:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1632 = param1.localizationId;
         this.var_1032 = param1.priceInCredits;
         this.var_1033 = param1.priceInActivityPoints;
         this.var_1423 = param1.activityPointType;
         this.var_376 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_376;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1632;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1032;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1033;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1423;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_665;
      }
      
      public function get pricingModel() : String
      {
         return this.var_666;
      }
      
      public function get priceType() : String
      {
         return this.var_1034;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2205;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2205 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1632 = "";
         this.var_1032 = 0;
         this.var_1033 = 0;
         this.var_1423 = 0;
         this.var_376 = null;
         if(this.var_665 != null)
         {
            this.var_665.dispose();
            this.var_665 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_666)
         {
            case const_511:
               this.var_665 = new SingleProductContainer(this,param1);
               break;
            case const_492:
               this.var_665 = new MultiProductContainer(this,param1);
               break;
            case const_495:
               this.var_665 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_666);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_666 = const_511;
            }
            else
            {
               this.var_666 = const_492;
            }
         }
         else if(param1.length > 1)
         {
            this.var_666 = const_495;
         }
         else
         {
            this.var_666 = const_1310;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1032 > 0 && this.var_1033 > 0)
         {
            this.var_1034 = const_699;
         }
         else if(this.var_1032 > 0)
         {
            this.var_1034 = const_419;
         }
         else if(this.var_1033 > 0)
         {
            this.var_1034 = const_767;
         }
         else
         {
            this.var_1034 = const_1068;
         }
      }
   }
}
