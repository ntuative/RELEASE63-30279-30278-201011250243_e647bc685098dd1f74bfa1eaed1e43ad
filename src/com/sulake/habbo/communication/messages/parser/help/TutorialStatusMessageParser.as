package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1284:Boolean;
      
      private var var_1028:Boolean;
      
      private var var_1285:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1284;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1028;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1285;
      }
      
      public function flush() : Boolean
      {
         this.var_1284 = false;
         this.var_1028 = false;
         this.var_1285 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1284 = param1.readBoolean();
         this.var_1028 = param1.readBoolean();
         this.var_1285 = param1.readBoolean();
         return true;
      }
   }
}
