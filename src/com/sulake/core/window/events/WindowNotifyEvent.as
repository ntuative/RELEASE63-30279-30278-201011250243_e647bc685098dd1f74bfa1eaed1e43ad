package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1478:String = "WN_CRETAE";
      
      public static const const_1356:String = "WN_CREATED";
      
      public static const const_1007:String = "WN_DESTROY";
      
      public static const const_998:String = "WN_DESTROYED";
      
      public static const const_960:String = "WN_OPEN";
      
      public static const const_1088:String = "WN_OPENED";
      
      public static const const_901:String = "WN_CLOSE";
      
      public static const const_952:String = "WN_CLOSED";
      
      public static const const_1024:String = "WN_FOCUS";
      
      public static const const_999:String = "WN_FOCUSED";
      
      public static const const_1006:String = "WN_UNFOCUS";
      
      public static const const_976:String = "WN_UNFOCUSED";
      
      public static const const_1004:String = "WN_ACTIVATE";
      
      public static const const_339:String = "WN_ACTVATED";
      
      public static const const_956:String = "WN_DEACTIVATE";
      
      public static const const_1074:String = "WN_DEACTIVATED";
      
      public static const const_529:String = "WN_SELECT";
      
      public static const const_324:String = "WN_SELECTED";
      
      public static const const_634:String = "WN_UNSELECT";
      
      public static const const_637:String = "WN_UNSELECTED";
      
      public static const const_1080:String = "WN_LOCK";
      
      public static const const_970:String = "WN_LOCKED";
      
      public static const const_984:String = "WN_UNLOCK";
      
      public static const const_982:String = "WN_UNLOCKED";
      
      public static const const_926:String = "WN_ENABLE";
      
      public static const const_563:String = "WN_ENABLED";
      
      public static const const_893:String = "WN_DISABLE";
      
      public static const const_594:String = "WN_DISABLED";
      
      public static const const_583:String = "WN_RESIZE";
      
      public static const const_165:String = "WN_RESIZED";
      
      public static const const_953:String = "WN_RELOCATE";
      
      public static const const_515:String = "WN_RELOCATED";
      
      public static const const_1023:String = "WN_MINIMIZE";
      
      public static const const_1013:String = "WN_MINIMIZED";
      
      public static const const_1097:String = "WN_MAXIMIZE";
      
      public static const const_948:String = "WN_MAXIMIZED";
      
      public static const const_904:String = "WN_RESTORE";
      
      public static const const_1019:String = "WN_RESTORED";
      
      public static const const_1652:String = "WN_ARRANGE";
      
      public static const const_1551:String = "WN_ARRANGED";
      
      public static const const_1573:String = "WN_UPDATE";
      
      public static const const_1572:String = "WN_UPDATED";
      
      public static const const_313:String = "WN_CHILD_ADDED";
      
      public static const const_568:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_271:String = "WN_CHILD_RELOCATED";
      
      public static const const_199:String = "WN_CHILD_ACTIVATED";
      
      public static const const_421:String = "WN_PARENT_ADDED";
      
      public static const const_957:String = "WN_PARENT_REMOVED";
      
      public static const const_422:String = "WN_PARENT_RESIZED";
      
      public static const const_910:String = "WN_PARENT_RELOCATED";
      
      public static const const_694:String = "WN_PARENT_ACTIVATED";
      
      public static const const_531:String = "WN_STATE_UPDATED";
      
      public static const const_469:String = "WN_STYLE_UPDATED";
      
      public static const const_398:String = "WN_PARAM_UPDATED";
      
      public static const const_1595:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1871,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
