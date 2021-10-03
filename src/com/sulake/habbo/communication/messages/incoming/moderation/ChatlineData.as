package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2266:int;
      
      private var var_2265:int;
      
      private var var_2263:int;
      
      private var var_2264:String;
      
      private var var_1557:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2266 = param1.readInteger();
         this.var_2265 = param1.readInteger();
         this.var_2263 = param1.readInteger();
         this.var_2264 = param1.readString();
         this.var_1557 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2266;
      }
      
      public function get minute() : int
      {
         return this.var_2265;
      }
      
      public function get chatterId() : int
      {
         return this.var_2263;
      }
      
      public function get chatterName() : String
      {
         return this.var_2264;
      }
      
      public function get msg() : String
      {
         return this.var_1557;
      }
   }
}
