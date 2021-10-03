package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1028:String = "M";
      
      public static const const_1284:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_167:Number = 0;
      
      private var var_223:int = 0;
      
      private var _name:String = "";
      
      private var var_2504:int = 0;
      
      private var var_823:String = "";
      
      private var var_553:String = "";
      
      private var var_2337:String = "";
      
      private var var_2129:int;
      
      private var var_2300:int = 0;
      
      private var var_2335:String = "";
      
      private var var_2336:int = 0;
      
      private var var_2310:int = 0;
      
      private var var_2503:String = "";
      
      private var var_168:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_168 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_168)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_166;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_168)
         {
            this.var_166 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_167;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_168)
         {
            this.var_167 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_223;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_168)
         {
            this.var_223 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_168)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2504;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_168)
         {
            this.var_2504 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_823;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_168)
         {
            this.var_823 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_553;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_168)
         {
            this.var_553 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2337;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_168)
         {
            this.var_2337 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2129;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_168)
         {
            this.var_2129 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2300;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_168)
         {
            this.var_2300 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2335;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_168)
         {
            this.var_2335 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2336;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_168)
         {
            this.var_2336 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2310;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_168)
         {
            this.var_2310 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2503;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_168)
         {
            this.var_2503 = param1;
         }
      }
   }
}
