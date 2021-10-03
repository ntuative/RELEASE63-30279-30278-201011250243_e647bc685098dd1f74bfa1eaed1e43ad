package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_674:int = 1;
      
      public static const const_579:int = 2;
      
      public static const const_746:int = 3;
      
      public static const const_934:int = 4;
      
      public static const const_667:int = 5;
      
      public static const const_900:int = 6;
       
      
      private var _type:int;
      
      private var var_998:int;
      
      private var var_1918:String;
      
      private var var_2382:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_998 = param2;
         this.var_1918 = param3;
         this.var_2382 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1918;
      }
      
      public function get time() : String
      {
         return this.var_2382;
      }
      
      public function get senderId() : int
      {
         return this.var_998;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
