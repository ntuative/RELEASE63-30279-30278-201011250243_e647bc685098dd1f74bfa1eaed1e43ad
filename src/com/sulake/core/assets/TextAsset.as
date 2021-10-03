package com.sulake.core.assets
{
   import flash.utils.ByteArray;
   
   public class TextAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_155:String = "";
      
      private var var_1404:AssetTypeDeclaration;
      
      private var var_921:String;
      
      public function TextAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1404 = param1;
         this.var_921 = param2;
      }
      
      public function get url() : String
      {
         return this.var_921;
      }
      
      public function get content() : Object
      {
         return this.var_155;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1404;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_155 = null;
            this.var_1404 = null;
            this.var_921 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1 is String)
         {
            this.var_155 = param1 as String;
            return;
         }
         if(param1 is Class)
         {
            _loc2_ = new param1() as ByteArray;
            this.var_155 = _loc2_.readUTFBytes(_loc2_.length);
            return;
         }
         if(param1 is ByteArray)
         {
            _loc2_ = param1 as ByteArray;
            this.var_155 = _loc2_.readUTFBytes(_loc2_.length);
            return;
         }
         if(param1 is TextAsset)
         {
            this.var_155 = TextAsset(param1).var_155;
            return;
         }
         this.var_155 = param1.toString();
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is TextAsset)
         {
            this.var_155 = TextAsset(param1).var_155;
            return;
         }
         throw Error("Provided asset is not of type TextAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
