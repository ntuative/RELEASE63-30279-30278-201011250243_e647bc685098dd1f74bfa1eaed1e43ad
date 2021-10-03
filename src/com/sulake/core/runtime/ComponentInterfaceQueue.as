package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1539:IID;
      
      private var var_722:Boolean;
      
      private var var_996:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1539 = param1;
         this.var_996 = new Array();
         this.var_722 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1539;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_722;
      }
      
      public function get receivers() : Array
      {
         return this.var_996;
      }
      
      public function dispose() : void
      {
         if(!this.var_722)
         {
            this.var_722 = true;
            this.var_1539 = null;
            while(this.var_996.length > 0)
            {
               this.var_996.pop();
            }
            this.var_996 = null;
         }
      }
   }
}
