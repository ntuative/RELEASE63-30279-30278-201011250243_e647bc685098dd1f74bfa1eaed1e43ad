package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _type:int;
      
      private var var_1440:int;
      
      private var var_769:int = 1;
      
      private var var_1183:int;
      
      private var var_392:Boolean = false;
      
      private var _isSelected:Boolean = false;
      
      private var var_1441:Boolean = false;
      
      private var var_612:BitmapData;
      
      private var var_1927:Date;
      
      public function Effect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get duration() : int
      {
         return this.var_1440;
      }
      
      public function get effectsInInventory() : int
      {
         return this.var_769;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_392;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_1441;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get icon() : BitmapData
      {
         return this.var_612;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_612;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(this.var_392)
         {
            _loc1_ = this.var_1183 - (new Date().valueOf() - this.var_1927.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return this.var_1183;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1440 = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         this.var_1183 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_1441 = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_612 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         this.var_769 = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !this.var_392)
         {
            this.var_1927 = new Date();
         }
         this.var_392 = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --this.var_769;
         if(this.var_769 < 0)
         {
            this.var_769 = 0;
         }
         this.var_1183 = this.var_1440;
         this.var_392 = false;
         this.var_1441 = false;
      }
   }
}
