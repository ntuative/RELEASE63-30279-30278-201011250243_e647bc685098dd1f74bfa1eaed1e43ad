package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1744:int;
      
      private var _name:String;
      
      private var var_1455:int;
      
      private var var_2426:int;
      
      private var var_2032:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_553:String;
      
      private var var_2429:int;
      
      private var var_2428:int;
      
      private var var_2427:int;
      
      private var var_2218:int;
      
      private var var_2037:int;
      
      private var _ownerName:String;
      
      private var var_2035:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1744;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1455;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2426;
      }
      
      public function get experience() : int
      {
         return this.var_2032;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_553;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2429;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2428;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2427;
      }
      
      public function get respect() : int
      {
         return this.var_2218;
      }
      
      public function get ownerId() : int
      {
         return this.var_2037;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_2035;
      }
      
      public function flush() : Boolean
      {
         this.var_1744 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1744 = param1.readInteger();
         this._name = param1.readString();
         this.var_1455 = param1.readInteger();
         this.var_2426 = param1.readInteger();
         this.var_2032 = param1.readInteger();
         this.var_2429 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2428 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2427 = param1.readInteger();
         this.var_553 = param1.readString();
         this.var_2218 = param1.readInteger();
         this.var_2037 = param1.readInteger();
         this.var_2035 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
