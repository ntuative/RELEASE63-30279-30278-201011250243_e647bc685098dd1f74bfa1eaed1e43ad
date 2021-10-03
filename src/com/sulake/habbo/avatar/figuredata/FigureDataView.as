package com.sulake.habbo.avatar.figuredata
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class FigureDataView
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _window:IWindowContainer;
      
      private var var_349:IBitmapWrapperWindow;
      
      private var var_1102:BitmapData;
      
      public function FigureDataView(param1:IHabboWindowManager, param2:IAssetLibrary)
      {
         super();
         this._assetLibrary = param2;
         this._windowManager = param1;
         var _loc3_:XmlAsset = this._assetLibrary.getAssetByName("AvatarEditorImage") as XmlAsset;
         if(_loc3_)
         {
            this._window = IWindowContainer(this._windowManager.buildFromXML(_loc3_.content as XML));
         }
         var _loc4_:BitmapDataAsset = this._assetLibrary.getAssetByName("platform") as BitmapDataAsset;
         if(_loc4_)
         {
            this.var_1102 = _loc4_.content as BitmapData;
         }
         if(this._window != null)
         {
            this.var_349 = this._window.findChildByName("bitmap") as IBitmapWrapperWindow;
         }
      }
      
      public function udpate(param1:BitmapData) : void
      {
         if(this.var_349 && this.var_1102)
         {
            this.var_349.bitmap = new BitmapData(this.var_349.width,this.var_349.height,true,16777215);
            this.var_349.bitmap.copyPixels(this.var_1102,this.var_1102.rect,new Point(0,this.var_349.height - this.var_1102.height - 8));
            this.var_349.bitmap.copyPixels(param1,param1.rect,new Point(4,0),null,null,true);
         }
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
   }
}
