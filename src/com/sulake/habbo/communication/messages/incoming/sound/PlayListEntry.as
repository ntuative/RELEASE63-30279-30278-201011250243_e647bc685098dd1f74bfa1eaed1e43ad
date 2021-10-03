package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2425:int;
      
      private var var_2451:int;
      
      private var var_2452:String;
      
      private var var_2450:String;
      
      private var var_2449:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2425 = param1;
         this.var_2451 = param2;
         this.var_2452 = param3;
         this.var_2450 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2425;
      }
      
      public function get length() : int
      {
         return this.var_2451;
      }
      
      public function get name() : String
      {
         return this.var_2452;
      }
      
      public function get creator() : String
      {
         return this.var_2450;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2449;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2449 = param1;
      }
   }
}
