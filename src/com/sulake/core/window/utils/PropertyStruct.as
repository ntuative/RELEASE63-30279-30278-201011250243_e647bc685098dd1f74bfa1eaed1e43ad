package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_180:String = "hex";
      
      public static const const_54:String = "int";
      
      public static const const_258:String = "uint";
      
      public static const const_218:String = "Number";
      
      public static const const_55:String = "Boolean";
      
      public static const const_92:String = "String";
      
      public static const const_201:String = "Point";
      
      public static const const_256:String = "Rectangle";
      
      public static const const_153:String = "Array";
      
      public static const const_210:String = "Map";
       
      
      private var var_513:String;
      
      private var var_152:Object;
      
      private var _type:String;
      
      private var var_1904:Boolean;
      
      private var var_2599:Boolean;
      
      private var var_1903:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_513 = param1;
         this.var_152 = param2;
         this._type = param3;
         this.var_1904 = param4;
         this.var_2599 = param3 == const_210 || param3 == const_153 || param3 == const_201 || param3 == const_256;
         this.var_1903 = param5;
      }
      
      public function get key() : String
      {
         return this.var_513;
      }
      
      public function get value() : Object
      {
         return this.var_152;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_1904;
      }
      
      public function get range() : Array
      {
         return this.var_1903;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_180:
               return "0x" + uint(this.var_152).toString(16);
            case const_55:
               return Boolean(this.var_152) == true ? "true" : "false";
            case const_201:
               return "Point(" + Point(this.var_152).x + ", " + Point(this.var_152).y + ")";
            case const_256:
               return "Rectangle(" + Rectangle(this.var_152).x + ", " + Rectangle(this.var_152).y + ", " + Rectangle(this.var_152).width + ", " + Rectangle(this.var_152).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_210:
               _loc3_ = this.var_152 as Map;
               _loc1_ = "<var key=\"" + this.var_513 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_153:
               _loc4_ = this.var_152 as Array;
               _loc1_ = "<var key=\"" + this.var_513 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_201:
               _loc5_ = this.var_152 as Point;
               _loc1_ = "<var key=\"" + this.var_513 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_54 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_54 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_256:
               _loc6_ = this.var_152 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_513 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_54 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_54 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_54 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_54 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_180:
               _loc1_ = "<var key=\"" + this.var_513 + "\" value=\"" + "0x" + uint(this.var_152).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_513 + "\" value=\"" + this.var_152 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
