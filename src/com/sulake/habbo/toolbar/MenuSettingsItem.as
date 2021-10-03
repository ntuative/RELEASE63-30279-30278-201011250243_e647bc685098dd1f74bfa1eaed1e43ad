package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2068:String;
      
      private var var_2066:Array;
      
      private var var_2067:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2068 = param1;
         this.var_2066 = param2;
         this.var_2067 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2068;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2066;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2067;
      }
   }
}
