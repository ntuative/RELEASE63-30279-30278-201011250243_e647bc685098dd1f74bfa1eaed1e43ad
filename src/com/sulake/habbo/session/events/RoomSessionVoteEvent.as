package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_117:String = "RSPE_VOTE_QUESTION";
      
      public static const const_128:String = "RSPE_VOTE_RESULT";
       
      
      private var var_945:String = "";
      
      private var var_1168:Array;
      
      private var var_1076:Array;
      
      private var var_1405:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1168 = [];
         this.var_1076 = [];
         super(param1,param2,param7,param8);
         this.var_945 = param3;
         this.var_1168 = param4;
         this.var_1076 = param5;
         if(this.var_1076 == null)
         {
            this.var_1076 = [];
         }
         this.var_1405 = param6;
      }
      
      public function get question() : String
      {
         return this.var_945;
      }
      
      public function get choices() : Array
      {
         return this.var_1168.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1076.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1405;
      }
   }
}
