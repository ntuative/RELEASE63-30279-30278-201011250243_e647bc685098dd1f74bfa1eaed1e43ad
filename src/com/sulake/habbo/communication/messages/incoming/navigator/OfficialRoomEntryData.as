package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1057:int = 1;
      
      public static const const_799:int = 2;
      
      public static const const_627:int = 3;
      
      public static const const_1460:int = 4;
       
      
      private var _index:int;
      
      private var var_1998:String;
      
      private var var_1994:String;
      
      private var var_1997:Boolean;
      
      private var var_1992:String;
      
      private var var_784:String;
      
      private var var_1993:int;
      
      private var var_1995:int;
      
      private var _type:int;
      
      private var var_1996:String;
      
      private var var_791:GuestRoomData;
      
      private var var_790:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_1998 = param1.readString();
         this.var_1994 = param1.readString();
         this.var_1997 = param1.readInteger() == 1;
         this.var_1992 = param1.readString();
         this.var_784 = param1.readString();
         this.var_1993 = param1.readInteger();
         this.var_1995 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1057)
         {
            this.var_1996 = param1.readString();
         }
         else if(this._type == const_627)
         {
            this.var_790 = new PublicRoomData(param1);
         }
         else if(this._type == const_799)
         {
            this.var_791 = new GuestRoomData(param1);
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_791 != null)
         {
            this.var_791.dispose();
            this.var_791 = null;
         }
         if(this.var_790 != null)
         {
            this.var_790.dispose();
            this.var_790 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_1998;
      }
      
      public function get popupDesc() : String
      {
         return this.var_1994;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_1997;
      }
      
      public function get picText() : String
      {
         return this.var_1992;
      }
      
      public function get picRef() : String
      {
         return this.var_784;
      }
      
      public function get folderId() : int
      {
         return this.var_1993;
      }
      
      public function get tag() : String
      {
         return this.var_1996;
      }
      
      public function get userCount() : int
      {
         return this.var_1995;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_791;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_790;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1057)
         {
            return 0;
         }
         if(this.type == const_799)
         {
            return this.var_791.maxUserCount;
         }
         if(this.type == const_627)
         {
            return this.var_790.maxUsers;
         }
         return 0;
      }
   }
}
