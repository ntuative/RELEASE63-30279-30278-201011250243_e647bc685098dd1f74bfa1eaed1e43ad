package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1257:Boolean = false;
      
      private var var_1793:int;
      
      private var var_1484:Array;
      
      private var var_633:Array;
      
      private var var_634:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1257 = _loc2_.isWrappingEnabled;
         this.var_1793 = _loc2_.wrappingPrice;
         this.var_1484 = _loc2_.stuffTypes;
         this.var_633 = _loc2_.boxTypes;
         this.var_634 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1257;
      }
      
      public function get price() : int
      {
         return this.var_1793;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1484;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_633;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_634;
      }
   }
}
