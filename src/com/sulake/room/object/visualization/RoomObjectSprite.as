package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_985:int = 0;
       
      
      private var var_346:BitmapData = null;
      
      private var var_1540:String = "";
      
      private var var_343:Boolean = true;
      
      private var var_1996:String = "";
      
      private var var_2119:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2120:String = "normal";
      
      private var var_1309:Boolean = false;
      
      private var var_1310:Boolean = false;
      
      private var _offset:Point;
      
      private var _width:int = 0;
      
      private var _height:int = 0;
      
      private var var_987:Number = 0;
      
      private var var_2082:Boolean = false;
      
      private var var_2121:Boolean = true;
      
      private var var_2083:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_1567:Array;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         this.var_1567 = [];
         super();
         this._instanceId = var_985++;
      }
      
      public function dispose() : void
      {
         this.var_346 = null;
         this._width = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_346;
      }
      
      public function get assetName() : String
      {
         return this.var_1540;
      }
      
      public function get visible() : Boolean
      {
         return this.var_343;
      }
      
      public function get tag() : String
      {
         return this.var_1996;
      }
      
      public function get alpha() : int
      {
         return this.var_2119;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2120;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1310;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1309;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_987;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2082;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2121;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2083;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_1567;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this._width = param1.width;
            this._height = param1.height;
         }
         this.var_346 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_1540 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_343 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_1996 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2119 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2120 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_1567 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1309 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1310 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_987 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2082 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2121 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2083 = param1;
         ++this._updateID;
      }
   }
}
