package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_167:Number = 0;
      
      private var var_223:int = 0;
      
      private var var_420:int = 0;
      
      private var var_524:int = 0;
      
      private var var_168:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_168 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_168)
         {
            this._type = param1;
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
      
      public function get sizeX() : int
      {
         return this.var_420;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_168)
         {
            this.var_420 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_524;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_168)
         {
            this.var_524 = param1;
         }
      }
   }
}
