package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_799:IAssetLoader;
      
      private var var_1540:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1540 = param1;
         this.var_799 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1540;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_799;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_799 != null)
            {
               if(!this.var_799.disposed)
               {
                  this.var_799.dispose();
                  this.var_799 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
