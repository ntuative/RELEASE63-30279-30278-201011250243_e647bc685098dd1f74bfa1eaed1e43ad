package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1627:int = 1;
      
      public static const const_1604:int = 2;
      
      public static const const_1601:int = 3;
      
      public static const const_1645:int = 4;
      
      public static const const_1332:int = 5;
      
      public static const const_1719:int = 6;
      
      public static const const_1258:int = 7;
      
      public static const const_1259:int = 8;
      
      public static const const_1614:int = 9;
      
      public static const const_1479:int = 10;
      
      public static const const_1235:int = 11;
      
      public static const const_1361:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1426:int;
      
      private var var_1891:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1426 = param1.readInteger();
         this.var_1891 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1426;
      }
      
      public function get info() : String
      {
         return this.var_1891;
      }
   }
}
