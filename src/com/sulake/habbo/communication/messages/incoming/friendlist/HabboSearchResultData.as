package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_1973:int;
      
      private var var_1695:String;
      
      private var var_2341:String;
      
      private var var_2396:Boolean;
      
      private var var_2394:Boolean;
      
      private var var_2397:int;
      
      private var var_2340:String;
      
      private var var_2395:String;
      
      private var var_1417:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1973 = param1.readInteger();
         this.var_1695 = param1.readString();
         this.var_2341 = param1.readString();
         this.var_2396 = param1.readBoolean();
         this.var_2394 = param1.readBoolean();
         param1.readString();
         this.var_2397 = param1.readInteger();
         this.var_2340 = param1.readString();
         this.var_2395 = param1.readString();
         this.var_1417 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_1973;
      }
      
      public function get avatarName() : String
      {
         return this.var_1695;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2341;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2396;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2394;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2397;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2340;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2395;
      }
      
      public function get realName() : String
      {
         return this.var_1417;
      }
   }
}
