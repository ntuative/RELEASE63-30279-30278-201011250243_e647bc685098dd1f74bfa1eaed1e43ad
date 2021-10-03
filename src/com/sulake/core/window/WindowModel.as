package com.sulake.core.window
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.utils.IRectLimiter;
   import com.sulake.core.window.utils.WindowRectLimits;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowModel implements IDisposable
   {
       
      
      protected var var_11:Rectangle;
      
      protected var var_342:Rectangle;
      
      protected var var_55:Rectangle;
      
      protected var var_127:Rectangle;
      
      protected var var_126:Rectangle;
      
      protected var var_70:WindowRectLimits;
      
      protected var var_17:WindowContext;
      
      protected var var_502:Boolean = false;
      
      protected var var_404:uint = 16777215;
      
      protected var var_1149:uint;
      
      protected var var_403:uint = 10;
      
      protected var var_755:Boolean = true;
      
      protected var var_343:Boolean = true;
      
      protected var var_684:Number = 1.0;
      
      protected var _param:uint;
      
      protected var _state:uint;
      
      protected var var_77:uint;
      
      protected var _type:uint;
      
      protected var var_97:String = "";
      
      protected var _name:String;
      
      protected var _id:uint;
      
      protected var var_754:Array;
      
      protected var _disposed:Boolean = false;
      
      public function WindowModel(param1:uint, param2:String, param3:uint, param4:uint, param5:uint, param6:WindowContext, param7:Rectangle, param8:Array = null)
      {
         super();
         this._id = param1;
         this._name = param2;
         this._type = param3;
         this._param = param5;
         this._state = WindowState.const_91;
         this.var_77 = param4;
         this.var_754 = param8 == null ? new Array() : param8;
         this.var_17 = param6;
         this.var_11 = param7.clone();
         this.var_342 = param7.clone();
         this.var_55 = param7.clone();
         this.var_127 = new Rectangle();
         this.var_126 = null;
         this.var_70 = new WindowRectLimits(this as IWindow);
      }
      
      public function get x() : int
      {
         return this.var_11.x;
      }
      
      public function get y() : int
      {
         return this.var_11.y;
      }
      
      public function get width() : int
      {
         return this.var_11.width;
      }
      
      public function get height() : int
      {
         return this.var_11.height;
      }
      
      public function get position() : Point
      {
         return this.var_11.topLeft;
      }
      
      public function get rectangle() : Rectangle
      {
         return this.var_11;
      }
      
      public function get limits() : IRectLimiter
      {
         return this.var_70;
      }
      
      public function get context() : IWindowContext
      {
         return this.var_17;
      }
      
      public function get mouseTreshold() : uint
      {
         return this.var_403;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get background() : Boolean
      {
         return this.var_502;
      }
      
      public function get clipping() : Boolean
      {
         return this.var_755;
      }
      
      public function get visible() : Boolean
      {
         return this.var_343;
      }
      
      public function get color() : uint
      {
         return this.var_404;
      }
      
      public function get blend() : Number
      {
         return this.var_684;
      }
      
      public function get param() : uint
      {
         return this._param;
      }
      
      public function get state() : uint
      {
         return this._state;
      }
      
      public function get style() : uint
      {
         return this.var_77;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get caption() : String
      {
         return this.var_97;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get tags() : Array
      {
         return this.var_754;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_11 = null;
            this.var_17 = null;
            this._state = WindowState.const_463;
            this.var_754 = null;
         }
      }
      
      public function invalidate(param1:Rectangle = null) : void
      {
      }
      
      public function getInitialWidth() : int
      {
         return this.var_342.width;
      }
      
      public function getInitialHeight() : int
      {
         return this.var_342.height;
      }
      
      public function getPreviousWidth() : int
      {
         return this.var_55.width;
      }
      
      public function getPreviousHeight() : int
      {
         return this.var_55.height;
      }
      
      public function getMinimizedWidth() : int
      {
         return this.var_127.width;
      }
      
      public function getMinimizedHeight() : int
      {
         return this.var_127.height;
      }
      
      public function getMaximizedWidth() : int
      {
         return this.var_126.width;
      }
      
      public function getMaximizedHeight() : int
      {
         return this.var_126.height;
      }
      
      public function hasMaxWidth() : Boolean
      {
         return this.var_70.maxWidth < int.MAX_VALUE;
      }
      
      public function getMaxWidth() : int
      {
         return this.var_70.maxWidth;
      }
      
      public function setMaxWidth(param1:int) : int
      {
         var _loc2_:int = this.var_70.maxWidth;
         this.var_70.maxWidth = param1;
         return _loc2_;
      }
      
      public function hasMinWidth() : Boolean
      {
         return this.var_70.minWidth > int.MIN_VALUE;
      }
      
      public function getMinWidth() : int
      {
         return this.var_70.minWidth;
      }
      
      public function setMinWidth(param1:int) : int
      {
         var _loc2_:int = this.var_70.minWidth;
         this.var_70.minWidth = param1;
         return _loc2_;
      }
      
      public function hasMaxHeight() : Boolean
      {
         return this.var_70.maxHeight < int.MAX_VALUE;
      }
      
      public function getMaxHeight() : int
      {
         return this.var_70.maxHeight;
      }
      
      public function setMaxHeight(param1:int) : int
      {
         var _loc2_:int = this.var_70.maxHeight;
         this.var_70.maxHeight = param1;
         return _loc2_;
      }
      
      public function hasMinHeight() : Boolean
      {
         return this.var_70.minHeight > int.MIN_VALUE;
      }
      
      public function getMinHeight() : int
      {
         return this.var_70.minHeight;
      }
      
      public function setMinHeight(param1:int) : int
      {
         var _loc2_:int = this.var_70.minHeight;
         this.var_70.minHeight = param1;
         return _loc2_;
      }
      
      public function testTypeFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (this._type & param2 ^ param1) == 0;
         }
         return (this._type & param1) == param1;
      }
      
      public function testStateFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (this._state & param2 ^ param1) == 0;
         }
         return (this._state & param1) == param1;
      }
      
      public function testStyleFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (this.var_77 & param2 ^ param1) == 0;
         }
         return (this.var_77 & param1) == param1;
      }
      
      public function testParamFlag(param1:uint, param2:uint = 0) : Boolean
      {
         if(param2 > 0)
         {
            return (this._param & param2 ^ param1) == 0;
         }
         return (this._param & param1) == param1;
      }
   }
}
