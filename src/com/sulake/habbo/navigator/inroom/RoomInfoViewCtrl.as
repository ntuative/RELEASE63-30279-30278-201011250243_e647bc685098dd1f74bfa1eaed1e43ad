package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2626:int;
      
      private var var_323:RoomEventViewCtrl;
      
      private var var_231:Timer;
      
      private var var_162:RoomSettingsCtrl;
      
      private var var_232:RoomThumbnailCtrl;
      
      private var var_986:TagRenderer;
      
      private var var_271:IWindowContainer;
      
      private var var_468:IWindowContainer;
      
      private var var_688:IWindowContainer;
      
      private var var_2288:IWindowContainer;
      
      private var var_2287:IWindowContainer;
      
      private var var_1318:IWindowContainer;
      
      private var var_833:ITextWindow;
      
      private var var_1069:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_867:ITextWindow;
      
      private var var_1314:ITextWindow;
      
      private var var_1071:ITextWindow;
      
      private var var_871:ITextWindow;
      
      private var var_1671:ITextWindow;
      
      private var var_233:IWindowContainer;
      
      private var var_870:IWindowContainer;
      
      private var var_1674:IWindowContainer;
      
      private var var_1908:ITextWindow;
      
      private var var_689:ITextWindow;
      
      private var _rateButton:IContainerButtonWindow;
      
      private var var_1315:IContainerButtonWindow;
      
      private var var_1312:IContainerButtonWindow;
      
      private var var_1316:IContainerButtonWindow;
      
      private var var_1313:IContainerButtonWindow;
      
      private var var_1317:IContainerButtonWindow;
      
      private var var_1675:IButtonWindow;
      
      private var var_1672:IButtonWindow;
      
      private var var_1673:IButtonWindow;
      
      private var var_869:IWindowContainer;
      
      private var var_1319:ITextWindow;
      
      private var var_1070:ITextFieldWindow;
      
      private var var_61:IWindowContainer;
      
      private var var_1072:IButtonWindow;
      
      private var var_868:IButtonWindow;
      
      private var var_2289:String;
      
      private var var_2286:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_323 = new RoomEventViewCtrl(this._navigator);
         this.var_162 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_232 = new RoomThumbnailCtrl(this._navigator);
         this.var_986 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_162);
         this.var_231 = new Timer(6000,1);
         this.var_231.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_101,this.onToolbarIconState);
         }
         if(this.var_231)
         {
            this.var_231.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_231.reset();
            this.var_231 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_231.reset();
         this.var_323.active = true;
         this.var_162.active = false;
         this.var_232.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_231.reset();
         this.var_162.load(param1);
         this.var_162.active = true;
         this.var_323.active = false;
         this.var_232.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_162.active = true;
         this.var_323.active = false;
         this.var_232.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_231.reset();
         this.var_162.active = false;
         this.var_323.active = false;
         this.var_232.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_959,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_231.reset();
         this.var_323.active = false;
         this.var_162.active = false;
         this.var_232.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_231.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_231.reset();
         this.var_323.active = false;
         this.var_162.active = false;
         this.var_232.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_443,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_271.rectangle + ", " + this.var_233.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_271);
         this.var_271.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_162.refresh(this.var_271);
         this.var_232.refresh(this.var_271);
         Util.moveChildrenToColumn(this.var_271,["room_details","room_buttons"],0,2);
         this.var_271.height = Util.getLowestPoint(this.var_271);
         this.var_271.visible = true;
         Logger.log("XORP: " + this.var_468.visible + ", " + this.var_1318.visible + ", " + this.var_688.visible + ", " + this.var_688.rectangle + ", " + this.var_271.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_233);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_323.refresh(this.var_233);
         if(Util.hasVisibleChildren(this.var_233) && !(this.var_162.active || this.var_232.active))
         {
            Util.moveChildrenToColumn(this.var_233,["event_details","event_buttons"],0,2);
            this.var_233.height = Util.getLowestPoint(this.var_233);
            this.var_233.visible = true;
         }
         else
         {
            this.var_233.visible = false;
         }
         Logger.log("EVENT: " + this.var_233.visible + ", " + this.var_233.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_162.active && !this.var_232.active && !this.var_323.active)
         {
            this.var_869.visible = true;
            this.var_1070.text = this.getEmbedData();
         }
         else
         {
            this.var_869.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_61)
         {
            return;
         }
         if(this.var_162.active)
         {
            this.var_61.visible = false;
            return;
         }
         this.var_61.visible = true;
         if(this.var_1072)
         {
            if(this.var_2289 == "exit_homeroom")
            {
               this.var_1072.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1072.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_868)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_868.visible = _loc1_;
            if(this.var_2286 == "0")
            {
               this.var_868.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_868.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_162.active || this.var_232.active)
         {
            return;
         }
         this.var_833.text = param1.roomName;
         this.var_833.height = this.var_833.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_867.text = param1.description;
         this.var_986.refreshTags(this.var_468,param1.tags);
         this.var_867.visible = false;
         if(param1.description != "")
         {
            this.var_867.height = this.var_867.textHeight + 5;
            this.var_867.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1315,"facebook_logo_small",_loc3_,null,0);
         this.var_1315.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this._rateButton,"thumb_up",_loc4_,null,0);
         this._rateButton.visible = _loc4_;
         this.var_871.visible = !_loc4_;
         this.var_1671.visible = !_loc4_;
         this.var_1671.text = "" + this._navigator.data.currentRoomRating;
         this._navigator.refreshButton(this.var_468,"home",param2,null,0);
         this._navigator.refreshButton(this.var_468,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_468,["room_name","owner_name_cont","tags","room_desc","rating_cont"],this.var_833.y,0);
         this.var_468.visible = true;
         this.var_468.height = Util.getLowestPoint(this.var_468);
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_162.active || this.var_232.active)
         {
            return;
         }
         this.var_1069.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1069.height = this.var_1069.textHeight + 5;
         this.var_1314.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1314.height = this.var_1314.textHeight + 5;
         Util.moveChildrenToColumn(this.var_688,["public_space_name","public_space_desc"],this.var_1069.y,0);
         this.var_688.visible = true;
         this.var_688.height = Math.max(86,Util.getLowestPoint(this.var_688));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_323.active)
         {
            return;
         }
         this.var_1908.text = param1.eventName;
         this.var_689.text = param1.eventDescription;
         this.var_986.refreshTags(this.var_870,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_689.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_689.height = this.var_689.textHeight + 5;
            this.var_689.y = Util.getLowestPoint(this.var_870) + 2;
            this.var_689.visible = true;
         }
         this.var_870.visible = true;
         this.var_870.height = Util.getLowestPoint(this.var_870);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_162.active || this.var_232.active)
         {
            return;
         }
         this.var_1675.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1312.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1316.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1313.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1317.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1318.visible = Util.hasVisibleChildren(this.var_1318);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_323.active)
         {
            return;
         }
         this.var_1672.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1673.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1674.visible = Util.hasVisibleChildren(this.var_1674);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_59,false);
         this._window.setParamFlag(HabboWindowParam.const_1292,true);
         this._window.visible = false;
         this.var_271 = IWindowContainer(this.find("room_info"));
         this.var_468 = IWindowContainer(this.find("room_details"));
         this.var_688 = IWindowContainer(this.find("public_space_details"));
         this.var_2288 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2287 = IWindowContainer(this.find("rating_cont"));
         this.var_1318 = IWindowContainer(this.find("room_buttons"));
         this.var_833 = ITextWindow(this.find("room_name"));
         this.var_1069 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_867 = ITextWindow(this.find("room_desc"));
         this.var_1314 = ITextWindow(this.find("public_space_desc"));
         this.var_1071 = ITextWindow(this.find("owner_caption"));
         this.var_871 = ITextWindow(this.find("rating_caption"));
         this.var_1671 = ITextWindow(this.find("rating_txt"));
         this.var_233 = IWindowContainer(this.find("event_info"));
         this.var_870 = IWindowContainer(this.find("event_details"));
         this.var_1674 = IWindowContainer(this.find("event_buttons"));
         this.var_1908 = ITextWindow(this.find("event_name"));
         this.var_689 = ITextWindow(this.find("event_desc"));
         this.var_1315 = IContainerButtonWindow(this.find("facebook_like_button"));
         this._rateButton = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1312 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1316 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1313 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1317 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1675 = IButtonWindow(this.find("room_settings_button"));
         this.var_1672 = IButtonWindow(this.find("create_event_button"));
         this.var_1673 = IButtonWindow(this.find("edit_event_button"));
         this.var_869 = IWindowContainer(this.find("embed_info"));
         this.var_1319 = ITextWindow(this.find("embed_info_txt"));
         this.var_1070 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_61 = IWindowContainer(this.find("buttons_container"));
         this.var_1072 = IButtonWindow(this.find("exit_room_button"));
         this.var_868 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1312,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1316,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1675,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1313,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1317,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1672,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1673,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1070,this.onEmbedSrcClick);
         Util.setProcDirectly(this._rateButton,this.onThumbUp);
         Util.setProcDirectly(this.var_1315,this.onFacebookLike);
         Util.setProcDirectly(this.var_868,this.onZoomClick);
         Util.setProcDirectly(this.var_1072,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1312,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1316,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1313,"home",true,null,0);
         this._navigator.refreshButton(this.var_1317,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_271,this.onHover);
         Util.setProcDirectly(this.var_233,this.onHover);
         this.var_1071.width = this.var_1071.textWidth;
         Util.moveChildrenToRow(this.var_2288,["owner_caption","owner_name"],this.var_1071.x,this.var_1071.y,3);
         this.var_871.width = this.var_871.textWidth;
         Util.moveChildrenToRow(this.var_2287,["rating_caption","rating_txt"],this.var_871.x,this.var_871.y,3);
         this.var_1319.height = this.var_1319.textHeight + 5;
         Util.moveChildrenToColumn(this.var_869,["embed_info_txt","embed_src_txt"],this.var_1319.y,2);
         this.var_869.height = Util.getLowestPoint(this.var_869) + 5;
         this.var_2626 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1070.setSelection(0,this.var_1070.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_40);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_40);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_101)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2286 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2289 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_231.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_443,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_101,this.onToolbarIconState);
         }
      }
   }
}
