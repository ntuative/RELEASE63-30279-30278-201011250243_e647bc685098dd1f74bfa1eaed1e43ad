package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var _toolbar:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_283:IHabboCommunicationManager;
      
      private var var_859:IHabboLocalizationManager;
      
      private var var_858:IHabboConfigurationManager;
      
      private var var_1062:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_59:HelpUI;
      
      private var var_161:TutorialUI;
      
      private var var_682:HotelMergeUI;
      
      private var var_860:RegistrationUI;
      
      private var var_1307:CallForHelpData;
      
      private var var_2274:UserRegistry;
      
      private var var_2166:String = "";
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1307 = new CallForHelpData();
         this.var_2274 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1062 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2166 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2166;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1307;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2274;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_859;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this._toolbar;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_161;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_682;
      }
      
      override public function dispose() : void
      {
         if(this.var_59 != null)
         {
            this.var_59.dispose();
            this.var_59 = null;
         }
         if(this.var_161 != null)
         {
            this.var_161.dispose();
            this.var_161 = null;
         }
         if(this.var_682)
         {
            this.var_682.dispose();
            this.var_682 = null;
         }
         if(this.var_860 != null)
         {
            this.var_860.dispose();
            this.var_860 = null;
         }
         if(this.var_1062 != null)
         {
            this.var_1062.dispose();
            this.var_1062 = null;
         }
         this._incomingMessages = null;
         if(this._toolbar)
         {
            this._toolbar.release(new IIDHabboToolbar());
            this._toolbar = null;
         }
         if(this.var_859)
         {
            this.var_859.release(new IIDHabboLocalizationManager());
            this.var_859 = null;
         }
         if(this.var_283)
         {
            this.var_283.release(new IIDHabboCommunicationManager());
            this.var_283 = null;
         }
         if(this.var_858)
         {
            this.var_858.release(new IIDHabboConfigurationManager());
            this.var_858 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_59 != null)
         {
            this.var_59.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_59 != null)
         {
            this.var_59.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_59 != null)
         {
            this.var_59.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_59 != null)
         {
            this.var_59.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_59 != null)
         {
            this.var_59.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1062;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_283 != null && param1 != null)
         {
            this.var_283.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_858 == null)
         {
            return param1;
         }
         return this.var_858.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_59 != null)
         {
            this.var_59.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_59 != null)
         {
            this.var_59.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1307.reportedUserId = param1;
         this.var_1307.reportedUserName = param2;
         this.var_59.showUI(HabboHelpViewEnum.const_331);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_59 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_59.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_59 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_59 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_859,this._toolbar);
         }
         return this.var_59 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         if(this.var_161 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_161 = new TutorialUI(this);
         }
         return this.var_161 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_161 != null)
         {
            this.var_161.dispose();
            this.var_161 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_682)
         {
            this.var_682 = new HotelMergeUI(this);
         }
         this.var_682.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_860)
         {
            this.var_860 = new RegistrationUI(this);
         }
         this.var_860.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_161 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_161.update(param1,param2,param3);
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_283 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_283);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._toolbar = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_859 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_858 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_88,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_90,this.onRoomSessionEvent);
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_70,this.onHabboToolbarEvent);
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_40,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_88:
               if(this.var_59 != null)
               {
                  this.var_59.setRoomSessionStatus(true);
               }
               if(this.var_161 != null)
               {
                  this.var_161.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_90:
               if(this.var_59 != null)
               {
                  this.var_59.setRoomSessionStatus(false);
               }
               if(this.var_161 != null)
               {
                  this.var_161.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this._toolbar != null)
         {
            this._toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_114,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_70)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_40)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
