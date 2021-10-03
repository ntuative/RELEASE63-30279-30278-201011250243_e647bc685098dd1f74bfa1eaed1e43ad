package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1281:String = "WE_CREATE";
      
      public static const const_1338:String = "WE_CREATED";
      
      public static const const_1432:String = "WE_DESTROY";
      
      public static const const_267:String = "WE_DESTROYED";
      
      public static const const_1453:String = "WE_OPEN";
      
      public static const const_1368:String = "WE_OPENED";
      
      public static const const_1242:String = "WE_CLOSE";
      
      public static const const_1278:String = "WE_CLOSED";
      
      public static const const_1489:String = "WE_FOCUS";
      
      public static const const_301:String = "WE_FOCUSED";
      
      public static const const_1468:String = "WE_UNFOCUS";
      
      public static const const_1354:String = "WE_UNFOCUSED";
      
      public static const const_1350:String = "WE_ACTIVATE";
      
      public static const const_1318:String = "WE_ACTIVATED";
      
      public static const const_1282:String = "WE_DEACTIVATE";
      
      public static const const_940:String = "WE_DEACTIVATED";
      
      public static const const_519:String = "WE_SELECT";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_742:String = "WE_UNSELECT";
      
      public static const const_738:String = "WE_UNSELECTED";
      
      public static const const_1759:String = "WE_ATTACH";
      
      public static const const_1757:String = "WE_ATTACHED";
      
      public static const const_1745:String = "WE_DETACH";
      
      public static const const_1630:String = "WE_DETACHED";
      
      public static const const_1279:String = "WE_LOCK";
      
      public static const const_1333:String = "WE_LOCKED";
      
      public static const const_1365:String = "WE_UNLOCK";
      
      public static const const_1339:String = "WE_UNLOCKED";
      
      public static const const_784:String = "WE_ENABLE";
      
      public static const const_272:String = "WE_ENABLED";
      
      public static const const_592:String = "WE_DISABLE";
      
      public static const const_228:String = "WE_DISABLED";
      
      public static const const_1374:String = "WE_RELOCATE";
      
      public static const const_325:String = "WE_RELOCATED";
      
      public static const const_1420:String = "WE_RESIZE";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const const_1427:String = "WE_MINIMIZE";
      
      public static const const_1319:String = "WE_MINIMIZED";
      
      public static const const_1298:String = "WE_MAXIMIZE";
      
      public static const const_1321:String = "WE_MAXIMIZED";
      
      public static const const_1391:String = "WE_RESTORE";
      
      public static const const_1271:String = "WE_RESTORED";
      
      public static const const_1664:String = "WE_ARRANGE";
      
      public static const const_1680:String = "WE_ARRANGED";
      
      public static const const_96:String = "WE_UPDATE";
      
      public static const const_1744:String = "WE_UPDATED";
      
      public static const const_1750:String = "WE_CHILD_RELOCATE";
      
      public static const const_530:String = "WE_CHILD_RELOCATED";
      
      public static const const_1623:String = "WE_CHILD_RESIZE";
      
      public static const const_275:String = "WE_CHILD_RESIZED";
      
      public static const const_1748:String = "WE_CHILD_REMOVE";
      
      public static const const_401:String = "WE_CHILD_REMOVED";
      
      public static const const_1662:String = "WE_PARENT_RELOCATE";
      
      public static const const_1717:String = "WE_PARENT_RELOCATED";
      
      public static const const_1730:String = "WE_PARENT_RESIZE";
      
      public static const const_1378:String = "WE_PARENT_RESIZED";
      
      public static const const_181:String = "WE_OK";
      
      public static const const_557:String = "WE_CANCEL";
      
      public static const const_115:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_404:String = "WE_SCROLL";
      
      public static const const_152:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1871:IWindow;
      
      protected var var_1870:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1871 = param3;
         this.var_1870 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1871;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1870 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1870;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
