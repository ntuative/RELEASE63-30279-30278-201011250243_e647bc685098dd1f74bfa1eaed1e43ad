package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_30:String = "AssetLoaderEventComplete";
      
      public static const const_983:String = "AssetLoaderEventProgress";
      
      public static const const_1053:String = "AssetLoaderEventUnload";
      
      public static const const_1011:String = "AssetLoaderEventStatus";
      
      public static const const_43:String = "AssetLoaderEventError";
      
      public static const const_914:String = "AssetLoaderEventOpen";
       
      
      private var var_344:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_344 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_344;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_344);
      }
   }
}
