package com.sulake.habbo.communication.messages.outgoing.inventory.trading
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RemoveItemFromTradeComposer implements IMessageComposer
   {
       
      
      private var var_1937:int;
      
      public function RemoveItemFromTradeComposer(param1:int)
      {
         super();
         this.var_1937 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1937];
      }
   }
}