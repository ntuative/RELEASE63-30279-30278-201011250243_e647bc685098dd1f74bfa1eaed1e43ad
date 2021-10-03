package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices
   {
       
      
      private var var_2625:uint;
      
      private var var_129:DisplayObject;
      
      private var var_216:IWindowContext;
      
      private var var_1056:IMouseDraggingService;
      
      private var var_1055:IMouseScalingService;
      
      private var var_1057:IMouseListenerService;
      
      private var var_1054:IFocusManagerService;
      
      private var var_1053:IToolTipAgentService;
      
      private var var_1058:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2625 = 0;
         this.var_129 = param2;
         this.var_216 = param1;
         this.var_1056 = new WindowMouseDragger(param2);
         this.var_1055 = new WindowMouseScaler(param2);
         this.var_1057 = new WindowMouseListener(param2);
         this.var_1054 = new FocusManager(param2);
         this.var_1053 = new WindowToolTipAgent(param2);
         this.var_1058 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1056 != null)
         {
            this.var_1056.dispose();
            this.var_1056 = null;
         }
         if(this.var_1055 != null)
         {
            this.var_1055.dispose();
            this.var_1055 = null;
         }
         if(this.var_1057 != null)
         {
            this.var_1057.dispose();
            this.var_1057 = null;
         }
         if(this.var_1054 != null)
         {
            this.var_1054.dispose();
            this.var_1054 = null;
         }
         if(this.var_1053 != null)
         {
            this.var_1053.dispose();
            this.var_1053 = null;
         }
         if(this.var_1058 != null)
         {
            this.var_1058.dispose();
            this.var_1058 = null;
         }
         this.var_216 = null;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1056;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1055;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1057;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1054;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1053;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1058;
      }
   }
}
