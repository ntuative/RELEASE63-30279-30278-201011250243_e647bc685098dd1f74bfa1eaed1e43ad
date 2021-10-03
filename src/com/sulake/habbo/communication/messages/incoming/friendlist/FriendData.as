package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_819:int;
      
      private var var_696:Boolean;
      
      private var var_1419:Boolean;
      
      private var var_553:String;
      
      private var var_1305:int;
      
      private var var_1418:String;
      
      private var var_1416:String;
      
      private var var_1417:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_819 = param1.readInteger();
         this.var_696 = param1.readBoolean();
         this.var_1419 = param1.readBoolean();
         this.var_553 = param1.readString();
         this.var_1305 = param1.readInteger();
         this.var_1418 = param1.readString();
         this.var_1416 = param1.readString();
         this.var_1417 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_819;
      }
      
      public function get online() : Boolean
      {
         return this.var_696;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1419;
      }
      
      public function get figure() : String
      {
         return this.var_553;
      }
      
      public function get categoryId() : int
      {
         return this.var_1305;
      }
      
      public function get motto() : String
      {
         return this.var_1418;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1416;
      }
      
      public function get realName() : String
      {
         return this.var_1417;
      }
   }
}
