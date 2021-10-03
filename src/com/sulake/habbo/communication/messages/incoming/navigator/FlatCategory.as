package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1670:int;
      
      private var var_2453:String;
      
      private var var_343:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1670 = param1.readInteger();
         this.var_2453 = param1.readString();
         this.var_343 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1670;
      }
      
      public function get nodeName() : String
      {
         return this.var_2453;
      }
      
      public function get visible() : Boolean
      {
         return this.var_343;
      }
   }
}
