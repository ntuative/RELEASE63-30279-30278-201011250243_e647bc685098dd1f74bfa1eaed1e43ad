package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1167:IHabboTracking;
      
      private var var_1797:Boolean = false;
      
      private var var_2389:int = 0;
      
      private var var_1717:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1167 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1167 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1797 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2389 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1797)
         {
            return;
         }
         ++this.var_1717;
         if(this.var_1717 <= this.var_2389)
         {
            this.var_1167.track("toolbar",param1);
         }
      }
   }
}
