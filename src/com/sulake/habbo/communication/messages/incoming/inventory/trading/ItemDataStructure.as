package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1937:int;
      
      private var var_1367:String;
      
      private var var_2247:int;
      
      private var var_2248:int;
      
      private var _category:int;
      
      private var var_1858:String;
      
      private var var_1646:int;
      
      private var var_2245:int;
      
      private var var_2250:int;
      
      private var var_2251:int;
      
      private var var_2249:int;
      
      private var var_2246:Boolean;
      
      private var var_2654:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_1937 = param1;
         this.var_1367 = param2;
         this.var_2247 = param3;
         this.var_2248 = param4;
         this._category = param5;
         this.var_1858 = param6;
         this.var_1646 = param7;
         this.var_2245 = param8;
         this.var_2250 = param9;
         this.var_2251 = param10;
         this.var_2249 = param11;
         this.var_2246 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_1937;
      }
      
      public function get itemType() : String
      {
         return this.var_1367;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2247;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2248;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1858;
      }
      
      public function get extra() : int
      {
         return this.var_1646;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2245;
      }
      
      public function get creationDay() : int
      {
         return this.var_2250;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2251;
      }
      
      public function get creationYear() : int
      {
         return this.var_2249;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2246;
      }
      
      public function get songID() : int
      {
         return this.var_1646;
      }
   }
}
