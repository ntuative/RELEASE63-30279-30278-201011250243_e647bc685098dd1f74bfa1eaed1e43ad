package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_80:String = "i";
      
      public static const const_87:String = "s";
      
      public static const const_237:String = "e";
       
      
      private var var_1493:String;
      
      private var var_2002:int;
      
      private var var_1208:String;
      
      private var var_1209:int;
      
      private var var_1495:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1493 = param1.readString();
         this.var_2002 = param1.readInteger();
         this.var_1208 = param1.readString();
         this.var_1209 = param1.readInteger();
         this.var_1495 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1493;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2002;
      }
      
      public function get extraParam() : String
      {
         return this.var_1208;
      }
      
      public function get productCount() : int
      {
         return this.var_1209;
      }
      
      public function get expiration() : int
      {
         return this.var_1495;
      }
   }
}
