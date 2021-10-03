package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var var_1170:String;
      
      private var var_151:String;
      
      private var var_2354:String;
      
      private var var_1406:String;
      
      private var _color:IPartColor;
      
      private var _frames:Array;
      
      private var _action:IActionDefinition;
      
      private var var_1334:Boolean;
      
      private var _isBlendable:Boolean;
      
      private var var_2353:ColorTransform;
      
      private var var_2355:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:String, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         this.var_1170 = param1;
         this.var_151 = param2;
         this.var_1406 = param3;
         this._color = param4;
         this._frames = param5;
         this._action = param6;
         this.var_1334 = param7;
         this.var_2355 = param8;
         this.var_2354 = param9;
         this._isBlendable = param10;
         this.var_2353 = new ColorTransform(1,1,1,param11);
         if(this._frames == null)
         {
            Logger.log("Null frame list");
         }
         if(this.var_151 == "ey")
         {
            this.var_1334 = false;
         }
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return this._frames[param1 % this._frames.length];
      }
      
      public function get frames() : Array
      {
         return this._frames;
      }
      
      public function get bodyPartId() : String
      {
         return this.var_1170;
      }
      
      public function get partType() : String
      {
         return this.var_151;
      }
      
      public function get partId() : String
      {
         return this.var_1406;
      }
      
      public function get color() : IPartColor
      {
         return this._color;
      }
      
      public function get action() : IActionDefinition
      {
         return this._action;
      }
      
      public function set isColorable(param1:Boolean) : void
      {
         this.var_1334 = param1;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1334;
      }
      
      public function get paletteMapId() : int
      {
         return this.var_2355;
      }
      
      public function get flippedPartType() : String
      {
         return this.var_2354;
      }
      
      public function get isBlendable() : Boolean
      {
         return this._isBlendable;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return this.var_2353;
      }
   }
}
