package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2480:Boolean;
      
      private var var_2479:int;
      
      private var var_1484:Array;
      
      private var var_633:Array;
      
      private var var_634:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2480;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2479;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1484 = [];
         this.var_633 = [];
         this.var_634 = [];
         this.var_2480 = param1.readBoolean();
         this.var_2479 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1484.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_633.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_634.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
