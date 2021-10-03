package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1426:int;
      
      private var var_1629:int;
      
      private var var_1628:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1629 = param1.readInteger();
         this.var_1426 = param1.readInteger();
         this.var_1628 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1426 = 0;
         this.var_1629 = 0;
         this.var_1628 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1426;
      }
      
      public function get messageId() : int
      {
         return this.var_1629;
      }
      
      public function get timestamp() : String
      {
         return this.var_1628;
      }
   }
}
