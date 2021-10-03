package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2647:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_128 = param1.desktop;
         var_78 = param1.var_1142 as WindowController;
         _lastClickTarget = param1.var_1143 as WindowController;
         var_144 = param1.renderer;
         var_758 = param1.var_1145;
         param2.begin();
         param2.end();
         param1.desktop = var_128;
         param1.var_1142 = var_78;
         param1.var_1143 = _lastClickTarget;
         param1.renderer = var_144;
         param1.var_1145 = var_758;
      }
   }
}
