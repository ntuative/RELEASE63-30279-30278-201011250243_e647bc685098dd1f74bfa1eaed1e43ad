package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_823:String = "";
      
      private var var_553:String = "";
      
      private var var_2337:String = "";
      
      private var var_2129:int;
      
      private var var_2300:int = 0;
      
      private var var_2335:String = "";
      
      private var var_2336:int = 0;
      
      private var var_2310:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2129;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2129 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_823;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_823 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_553;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_553 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2337;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2337 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2300;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2300 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2335;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2335 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2336;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2336 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2310;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2310 = param1;
      }
   }
}
