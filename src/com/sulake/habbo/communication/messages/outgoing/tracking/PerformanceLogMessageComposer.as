package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2187:int = 0;
      
      private var var_1390:String = "";
      
      private var var_1812:String = "";
      
      private var var_2188:String = "";
      
      private var var_2186:String = "";
      
      private var var_1625:int = 0;
      
      private var var_2189:int = 0;
      
      private var var_2184:int = 0;
      
      private var var_1387:int = 0;
      
      private var var_2185:int = 0;
      
      private var var_1388:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2187 = param1;
         this.var_1390 = param2;
         this.var_1812 = param3;
         this.var_2188 = param4;
         this.var_2186 = param5;
         if(param6)
         {
            this.var_1625 = 1;
         }
         else
         {
            this.var_1625 = 0;
         }
         this.var_2189 = param7;
         this.var_2184 = param8;
         this.var_1387 = param9;
         this.var_2185 = param10;
         this.var_1388 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2187,this.var_1390,this.var_1812,this.var_2188,this.var_2186,this.var_1625,this.var_2189,this.var_2184,this.var_1387,this.var_2185,this.var_1388];
      }
   }
}
