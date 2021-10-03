package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2126:int;
      
      private var var_1367:String;
      
      private var _objId:int;
      
      private var var_1634:int;
      
      private var _category:int;
      
      private var var_1858:String;
      
      private var var_2124:Boolean;
      
      private var var_2123:Boolean;
      
      private var var_2125:Boolean;
      
      private var var_2122:Boolean;
      
      private var var_2127:int;
      
      private var var_1646:int;
      
      private var var_1560:String = "";
      
      private var var_2425:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2126 = param1;
         this.var_1367 = param2;
         this._objId = param3;
         this.var_1634 = param4;
         this._category = param5;
         this.var_1858 = param6;
         this.var_2124 = param7;
         this.var_2123 = param8;
         this.var_2125 = param9;
         this.var_2122 = param10;
         this.var_2127 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1560 = param1;
         this.var_1646 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2126;
      }
      
      public function get itemType() : String
      {
         return this.var_1367;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1634;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1858;
      }
      
      public function get method_6() : Boolean
      {
         return this.var_2124;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2123;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2125;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2122;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2127;
      }
      
      public function get slotId() : String
      {
         return this.var_1560;
      }
      
      public function get songId() : int
      {
         return this.var_2425;
      }
      
      public function get extra() : int
      {
         return this.var_1646;
      }
   }
}
