package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_737:String = "RWUAM_WHISPER_USER";
      
      public static const const_672:String = "RWUAM_IGNORE_USER";
      
      public static const const_610:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_415:String = "RWUAM_KICK_USER";
      
      public static const const_669:String = "RWUAM_BAN_USER";
      
      public static const const_789:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_697:String = "RWUAM_RESPECT_USER";
      
      public static const const_651:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_560:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_802:String = "RWUAM_START_TRADING";
      
      public static const const_585:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_435:String = "RWUAM_KICK_BOT";
      
      public static const const_740:String = "RWUAM_REPORT";
      
      public static const const_485:String = "RWUAM_PICKUP_PET";
      
      public static const const_1277:String = "RWUAM_TRAIN_PET";
      
      public static const const_533:String = " RWUAM_RESPECT_PET";
      
      public static const const_373:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
