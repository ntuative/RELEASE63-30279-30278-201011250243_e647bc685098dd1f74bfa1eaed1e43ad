package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_300:int;
      
      private var var_1995:int;
      
      private var var_2491:Boolean;
      
      private var var_2037:int;
      
      private var _ownerName:String;
      
      private var var_99:RoomData;
      
      private var var_712:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_300 = param1.readInteger();
         this.var_1995 = param1.readInteger();
         this.var_2491 = param1.readBoolean();
         this.var_2037 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_99 = new RoomData(param1);
         this.var_712 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_99 != null)
         {
            this.var_99.dispose();
            this.var_99 = null;
         }
         if(this.var_712 != null)
         {
            this.var_712.dispose();
            this.var_712 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_300;
      }
      
      public function get userCount() : int
      {
         return this.var_1995;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2491;
      }
      
      public function get ownerId() : int
      {
         return this.var_2037;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_99;
      }
      
      public function get event() : RoomData
      {
         return this.var_712;
      }
   }
}
