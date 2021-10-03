package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1744:int;
      
      private var var_2501:String;
      
      private var var_1455:int;
      
      private var var_553:String;
      
      private var var_1376:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1744 = param1.readInteger();
         this.var_2501 = param1.readString();
         this.var_1455 = param1.readInteger();
         this.var_553 = param1.readString();
         this.var_1376 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1744;
      }
      
      public function get petName() : String
      {
         return this.var_2501;
      }
      
      public function get level() : int
      {
         return this.var_1455;
      }
      
      public function get figure() : String
      {
         return this.var_553;
      }
      
      public function get petType() : int
      {
         return this.var_1376;
      }
   }
}
