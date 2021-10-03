package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IToolTipAgentService
   {
       
      
      protected var var_1165:String;
      
      protected var var_253:IToolTipWindow;
      
      protected var var_345:Timer;
      
      protected var var_1164:Point;
      
      protected var var_1166:Point;
      
      protected var var_1401:uint;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         this.var_1166 = new Point();
         this.var_1164 = new Point(20,20);
         this.var_1401 = 500;
         super(param1);
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               this.var_1165 = IInteractiveWindow(param1).toolTipCaption;
               this.var_1401 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               this.var_1165 = param1.caption;
               this.var_1401 = 500;
            }
            _mouse.x = var_129.mouseX;
            _mouse.y = var_129.mouseY;
            getMousePositionRelativeTo(param1,_mouse,this.var_1166);
            if(this.var_1165 != null && this.var_1165 != "")
            {
               if(this.var_345 == null)
               {
                  this.var_345 = new Timer(this.var_1401,1);
                  this.var_345.addEventListener(TimerEvent.TIMER,this.showToolTip);
               }
               this.var_345.reset();
               this.var_345.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(this.var_345 != null)
         {
            this.var_345.stop();
            this.var_345.removeEventListener(TimerEvent.TIMER,this.showToolTip);
            this.var_345 = null;
         }
         this.hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,this.var_1166);
            if(this.var_253 != null && !this.var_253.disposed)
            {
               this.var_253.x = param1 + this.var_1164.x;
               this.var_253.y = param2 + this.var_1164.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_345 != null)
         {
            this.var_345.reset();
         }
         if(_window && true)
         {
            if(this.var_253 == null || this.var_253.disposed)
            {
               this.var_253 = _window.context.create("undefined::ToolTip",this.var_1165,WindowType.const_353,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            this.var_253.x = _loc2_.x + this.var_1166.x + this.var_1164.x;
            this.var_253.y = _loc2_.y + this.var_1166.y + this.var_1164.y;
         }
      }
      
      protected function hideToolTip() : void
      {
         if(this.var_253 != null && !this.var_253.disposed)
         {
            this.var_253.destroy();
            this.var_253 = null;
         }
      }
   }
}
