package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2483:int;
      
      private var var_2482:int;
      
      private var var_2481:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2483 = param1;
         this.var_2482 = param2;
         this.var_2481 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2483,this.var_2482,this.var_2481];
      }
      
      public function dispose() : void
      {
      }
   }
}
