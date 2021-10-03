package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1948:String;
      
      private var var_1950:int;
      
      private var var_1951:int;
      
      private var var_1949:String;
      
      private var var_1952:int;
      
      private var var_1670:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1948 = param1.readString();
         this.var_1950 = param1.readInteger();
         this.var_1951 = param1.readInteger();
         this.var_1949 = param1.readString();
         this.var_1952 = param1.readInteger();
         this.var_1670 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_1948;
      }
      
      public function get unitPort() : int
      {
         return this.var_1950;
      }
      
      public function get worldId() : int
      {
         return this.var_1951;
      }
      
      public function get castLibs() : String
      {
         return this.var_1949;
      }
      
      public function get maxUsers() : int
      {
         return this.var_1952;
      }
      
      public function get nodeId() : int
      {
         return this.var_1670;
      }
   }
}
