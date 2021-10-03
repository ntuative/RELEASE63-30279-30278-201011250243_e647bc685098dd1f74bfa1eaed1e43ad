package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1799:int;
      
      private var var_2533:int;
      
      private var var_1275:int;
      
      private var var_2295:int;
      
      private var var_99:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1799 = param1.readInteger();
         this.var_2533 = param1.readInteger();
         this.var_1275 = param1.readInteger();
         this.var_2295 = param1.readInteger();
         this.var_99 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1799);
      }
      
      public function get callId() : int
      {
         return this.var_1799;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2533;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1275;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2295;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_99;
      }
   }
}
