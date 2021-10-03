package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_400:int = 0;
      
      public static const const_167:int = 1;
      
      public static const const_116:int = 2;
      
      public static const const_691:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1421:String;
      
      private var var_2195:int;
      
      private var var_1305:int;
      
      private var var_2196:int;
      
      private var var_2190:int;
      
      private var var_754:Array;
      
      private var var_2194:Array;
      
      private var var_2192:int;
      
      private var var_2197:Boolean;
      
      private var var_2191:Boolean;
      
      private var var_2193:Boolean;
      
      private var var_2198:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2197;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2197 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2191;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2191 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2193;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2193 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2198;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2198 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1421;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1421 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2195;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2195 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1305;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1305 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2196;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2196 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2190;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2190 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_754 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2194;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2194 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2192;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2192 = param1;
      }
   }
}
