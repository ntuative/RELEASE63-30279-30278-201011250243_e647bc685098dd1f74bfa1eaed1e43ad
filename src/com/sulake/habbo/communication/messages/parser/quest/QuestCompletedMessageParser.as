package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestCompletedMessageParser implements IMessageParser
   {
       
      
      private var var_1422:String;
      
      private var var_939:QuestMessageData;
      
      public function QuestCompletedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1422 = "";
         if(this.var_939)
         {
            this.var_939.dispose();
         }
         this.var_939 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1422 = param1.readString();
         this.var_939 = new QuestMessageData(param1);
         return true;
      }
      
      public function get campaignId() : String
      {
         return this.var_1422;
      }
      
      public function get questData() : QuestMessageData
      {
         return this.var_939;
      }
   }
}
