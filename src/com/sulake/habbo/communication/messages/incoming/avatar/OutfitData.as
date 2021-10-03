package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1560:int;
      
      private var var_1999:String;
      
      private var var_819:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1560 = param1.readInteger();
         this.var_1999 = param1.readString();
         this.var_819 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1560;
      }
      
      public function get figureString() : String
      {
         return this.var_1999;
      }
      
      public function get gender() : String
      {
         return this.var_819;
      }
   }
}
