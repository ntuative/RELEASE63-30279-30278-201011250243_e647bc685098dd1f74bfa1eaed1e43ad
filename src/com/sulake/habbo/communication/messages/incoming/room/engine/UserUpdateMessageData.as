package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_167:Number = 0;
      
      private var var_2252:Number = 0;
      
      private var var_2256:Number = 0;
      
      private var var_2253:Number = 0;
      
      private var var_2254:Number = 0;
      
      private var var_223:int = 0;
      
      private var var_1929:int = 0;
      
      private var var_284:Array;
      
      private var var_2255:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_284 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_166 = param3;
         this.var_167 = param4;
         this.var_2252 = param5;
         this.var_223 = param6;
         this.var_1929 = param7;
         this.var_2256 = param8;
         this.var_2253 = param9;
         this.var_2254 = param10;
         this.var_2255 = param11;
         this.var_284 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_166;
      }
      
      public function get z() : Number
      {
         return this.var_167;
      }
      
      public function get localZ() : Number
      {
         return this.var_2252;
      }
      
      public function get targetX() : Number
      {
         return this.var_2256;
      }
      
      public function get targetY() : Number
      {
         return this.var_2253;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2254;
      }
      
      public function get dir() : int
      {
         return this.var_223;
      }
      
      public function get dirHead() : int
      {
         return this.var_1929;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2255;
      }
      
      public function get actions() : Array
      {
         return this.var_284.slice();
      }
   }
}
