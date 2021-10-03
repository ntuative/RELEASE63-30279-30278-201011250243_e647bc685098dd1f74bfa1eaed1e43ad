package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_638:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_722)
         {
            _structure = null;
            _assets = null;
            var_213 = null;
            var_248 = null;
            var_553 = null;
            var_497 = null;
            var_284 = null;
            if(!var_1148 && var_37)
            {
               var_37.dispose();
            }
            var_37 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_667 = null;
            var_722 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_638[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_638[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_338:
               switch(_loc3_)
               {
                  case AvatarAction.const_768:
                  case AvatarAction.const_468:
                  case AvatarAction.const_365:
                  case AvatarAction.const_660:
                  case AvatarAction.const_344:
                  case AvatarAction.const_562:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_261:
            case AvatarAction.const_725:
            case AvatarAction.const_206:
            case AvatarAction.const_782:
            case AvatarAction.const_602:
            case AvatarAction.const_601:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
