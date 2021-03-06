package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1455:int;
      
      private var var_256:String;
      
      private var var_2439:int;
      
      private var var_1943:int;
      
      private var var_1454:int;
      
      private var var_2438:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1455 = param1.readInteger();
         this.var_256 = param1.readString();
         this.var_2439 = param1.readInteger();
         this.var_1943 = param1.readInteger();
         this.var_1454 = param1.readInteger();
         this.var_2438 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_256;
      }
      
      public function get level() : int
      {
         return this.var_1455;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2439;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1943;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1454;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2438;
      }
   }
}
