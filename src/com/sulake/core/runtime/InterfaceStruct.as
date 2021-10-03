package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1363:IID;
      
      private var var_1757:String;
      
      private var var_105:IUnknown;
      
      private var var_719:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1363 = param1;
         this.var_1757 = getQualifiedClassName(this.var_1363);
         this.var_105 = param2;
         this.var_719 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1363;
      }
      
      public function get iis() : String
      {
         return this.var_1757;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_105;
      }
      
      public function get references() : uint
      {
         return this.var_719;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_105 == null;
      }
      
      public function dispose() : void
      {
         this.var_1363 = null;
         this.var_1757 = null;
         this.var_105 = null;
         this.var_719 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_719;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_719) : uint(0);
      }
   }
}
