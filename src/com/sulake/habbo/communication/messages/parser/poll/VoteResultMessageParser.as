package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_945:String;
      
      private var var_1168:Array;
      
      private var var_1076:Array;
      
      private var var_1405:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_945;
      }
      
      public function get choices() : Array
      {
         return this.var_1168.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1076.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1405;
      }
      
      public function flush() : Boolean
      {
         this.var_945 = "";
         this.var_1168 = [];
         this.var_1076 = [];
         this.var_1405 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_945 = param1.readString();
         this.var_1168 = [];
         this.var_1076 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1168.push(param1.readString());
            this.var_1076.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1405 = param1.readInteger();
         return true;
      }
   }
}
