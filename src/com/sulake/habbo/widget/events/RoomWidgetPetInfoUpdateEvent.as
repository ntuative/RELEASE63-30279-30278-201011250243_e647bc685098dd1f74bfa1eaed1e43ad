package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const PET_INFO:String = "RWPIUE_PET_INFO";
       
      
      private var var_1455:int;
      
      private var var_2030:int;
      
      private var var_2032:int;
      
      private var var_2033:int;
      
      private var _energy:int;
      
      private var var_2038:int;
      
      private var _nutrition:int;
      
      private var var_2036:int;
      
      private var var_721:int;
      
      private var _petRespect:int;
      
      private var var_2035:int;
      
      private var _name:String;
      
      private var _id:int;
      
      private var var_37:BitmapData;
      
      private var var_1376:int;
      
      private var var_2029:int;
      
      private var var_2034:Boolean;
      
      private var var_2037:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2031:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.PET_INFO,param10,param11);
         this.var_1376 = param1;
         this.var_2029 = param2;
         this._name = param3;
         this._id = param4;
         this.var_37 = param5;
         this.var_2034 = param6;
         this.var_2037 = param7;
         this._ownerName = param8;
         this.var_2031 = param9;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get image() : BitmapData
      {
         return this.var_37;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get petType() : int
      {
         return this.var_1376;
      }
      
      public function get petRace() : int
      {
         return this.var_2029;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2034;
      }
      
      public function get ownerId() : int
      {
         return this.var_2037;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2031;
      }
      
      public function get age() : int
      {
         return this.var_2035;
      }
      
      public function get level() : int
      {
         return this.var_1455;
      }
      
      public function get levelMax() : int
      {
         return this.var_2030;
      }
      
      public function get experience() : int
      {
         return this.var_2032;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2033;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2038;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2036;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_721;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1455 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2030 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2032 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2033 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2038 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2036 = param1;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         this.var_721 = param1;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         this._canOwnerBeKicked = param1;
      }
      
      public function set petRespect(param1:int) : void
      {
         this._petRespect = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_2035 = param1;
      }
   }
}
