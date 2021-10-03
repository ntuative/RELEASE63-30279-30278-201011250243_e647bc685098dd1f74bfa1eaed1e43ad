package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementBonusMessageParser implements IMessageParser
   {
       
      
      private var var_1196:int;
      
      private var var_1417:String;
      
      public function HabboAchievementBonusMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1196 = param1.readInteger();
         this.var_1417 = param1.readString();
         return true;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1196;
      }
      
      public function get realName() : String
      {
         return this.var_1417;
      }
   }
}
