package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.quest.enum.QuestStatusEnum;
   import flash.events.Event;
   
   public class Quest implements IDisposable
   {
       
      
      private var _view:IWindowContainer;
      
      private var var_68:QuestCampaign;
      
      private var _id:int;
      
      private var var_344:int;
      
      private var _type:String;
      
      private var var_1570:String;
      
      private var var_1569:int;
      
      private var var_1608:Date;
      
      private var _localizationCode:String;
      
      private var var_185:Boolean = false;
      
      private var var_2171:uint = 2;
      
      private var var_2172:uint = 0;
      
      private var var_803:IWindow;
      
      private var var_722:Boolean = false;
      
      public function Quest(param1:QuestMessageData, param2:QuestCampaign)
      {
         super();
         this.var_68 = param2;
         this._id = param1.id;
         this.update(param1);
      }
      
      public function dispose() : void
      {
         if(this._view)
         {
            this._view.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.itemGridEventProc);
            this._view.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.itemGridEventProc);
            this._view.removeEventListener(WindowMouseEvent.const_25,this.itemGridEventProc);
            this._view.dispose();
            this._view = null;
         }
         this.var_722 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_722;
      }
      
      public function update(param1:QuestMessageData) : void
      {
         this.var_344 = param1.status;
         this._type = param1.type;
         this.var_1570 = param1.roomItemTypeName;
         this.var_1569 = param1.rewardCurrencyAmount;
         this.var_1608 = new Date();
         this.var_1608.setTime(param1.endDateTimeStamp);
         this._localizationCode = param1.localizationCode;
         this.updateView();
      }
      
      private function createView() : void
      {
         switch(this.var_344)
         {
            case QuestStatusEnum.const_42:
               this._view = this.var_68.controller.questEngine.getXmlWindow("QuestEntityAccepted") as IWindowContainer;
               break;
            case QuestStatusEnum.const_524:
               this._view = this.var_68.controller.questEngine.getXmlWindow("QuestEntityAvailable") as IWindowContainer;
               break;
            case QuestStatusEnum.const_173:
               this._view = this.var_68.controller.questEngine.getXmlWindow("QuestEntityExpired") as IWindowContainer;
               break;
            case QuestStatusEnum.const_553:
               this._view = this.var_68.controller.questEngine.getXmlWindow("QuestEntityCompleted") as IWindowContainer;
               break;
            case QuestStatusEnum.const_179:
               this._view = this.var_68.controller.questEngine.getXmlWindow("QuestEntityPreview") as IWindowContainer;
               break;
            default:
               this._view = this.var_68.controller.questEngine.getXmlWindow("QuestEntityExpired") as IWindowContainer;
         }
         if(!this._view)
         {
            return;
         }
         this._view.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.itemGridEventProc);
         this._view.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.itemGridEventProc);
         this._view.addEventListener(WindowMouseEvent.const_25,this.itemGridEventProc);
         var _loc1_:IWindow = this._view.findChildByTag("SELECTION_COLOR");
         if(_loc1_ != null)
         {
            this.var_803 = _loc1_;
         }
         else
         {
            this.var_803 = this._view;
         }
      }
      
      private function updateView() : void
      {
         var _loc2_:* = null;
         if(this._view == null)
         {
            this.createView();
         }
         var _loc1_:IBitmapWrapperWindow = this.find(this._view,"icon") as IBitmapWrapperWindow;
         switch(this.var_344)
         {
            case QuestStatusEnum.const_42:
               _loc2_ = ["icon",this.var_68.id,"active"].join("_");
               this.var_68.controller.questEngine.setImageFromAsset(_loc1_,_loc2_,this.onPreviewImageReady);
               break;
            case QuestStatusEnum.const_524:
               break;
            case QuestStatusEnum.const_173:
               break;
            case QuestStatusEnum.const_553:
               this.var_68.controller.questEngine.setImageFromAsset(_loc1_,"icon_complete",this.onPreviewImageReady);
         }
         var _loc3_:String = ["quest",this.var_68.id,this._localizationCode].join("_");
         var _loc4_:* = _loc3_ + ".title";
         var _loc5_:* = _loc3_ + ".short";
         this.setText("quest.title",_loc4_);
         this.setText("quest.short",_loc5_);
      }
      
      public function get endDate() : Date
      {
         return this.var_1608;
      }
      
      private function itemGridEventProc(param1:Event, param2:IWindow = null) : void
      {
         if(param2 == null)
         {
            param2 = param1.target as IWindow;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_68.activateListItem(this);
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            if(!this.var_185)
            {
               this.var_803.style = this.var_2172;
            }
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            if(!this.var_185)
            {
               this.var_803.style = this.var_2171;
            }
         }
      }
      
      public function get selected() : Boolean
      {
         return this.var_185;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.var_185 = param1;
         if(this.var_185)
         {
            this.var_803.style = this.var_2172;
         }
         else
         {
            this.var_803.style = this.var_2171;
         }
      }
      
      private function setText(param1:String, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:IWindow = this._view.findChildByName(param1);
         if(_loc4_)
         {
            if(param3)
            {
               param2 = "${" + param2 + "}";
            }
            _loc4_.caption = param2;
         }
      }
      
      private function setVisible(param1:String, param2:Boolean) : void
      {
         var _loc3_:IWindow = this._view.findChildByName(param1);
         if(_loc3_)
         {
            _loc3_.visible = param2;
         }
      }
      
      private function find(param1:IWindowContainer, param2:String) : IWindow
      {
         var _loc3_:IWindow = param1.findChildByName(param2);
         if(_loc3_ == null)
         {
            throw new Error("Window element with name: " + param2 + " cannot be found!");
         }
         return _loc3_;
      }
      
      private function onPreviewImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_722)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ != null)
         {
            _loc3_ = this.find(this._view,"icon") as IBitmapWrapperWindow;
            this.var_68.controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onPreviewImageReady);
         }
      }
      
      public function get view() : IWindowContainer
      {
         return this._view;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_344;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1570;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1569;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
   }
}
