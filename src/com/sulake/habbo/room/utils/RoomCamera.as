package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_864:int = 3;
       
      
      private var var_2462:int = -1;
      
      private var var_2469:int = -2;
      
      private var var_334:Vector3d = null;
      
      private var var_394:Vector3d = null;
      
      private var var_2471:Boolean = false;
      
      private var var_2466:Boolean = false;
      
      private var var_2464:Boolean = false;
      
      private var var_2470:Boolean = false;
      
      private var var_2468:int = 0;
      
      private var var_2463:int = 0;
      
      private var var_2467:int = 0;
      
      private var var_2465:int = 0;
      
      private var var_1362:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_394;
      }
      
      public function get targetId() : int
      {
         return this.var_2462;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2469;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2471;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2466;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2464;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2470;
      }
      
      public function get screenWd() : int
      {
         return this.var_2468;
      }
      
      public function get screenHt() : int
      {
         return this.var_2463;
      }
      
      public function get roomWd() : int
      {
         return this.var_2467;
      }
      
      public function get roomHt() : int
      {
         return this.var_2465;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2462 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2469 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2471 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2466 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2464 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2470 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2468 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2463 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2467 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2465 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_334 == null)
         {
            this.var_334 = new Vector3d();
         }
         if(this.var_334.x != param1.x || this.var_334.y != param1.y || this.var_334.z != param1.z)
         {
            this.var_334.assign(param1);
            this.var_1362 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_334 = null;
         this.var_394 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_394 != null)
         {
            return;
         }
         this.var_394 = new Vector3d();
         this.var_394.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_334 != null && this.var_394 != null)
         {
            ++this.var_1362;
            _loc4_ = Vector3d.dif(this.var_334,this.var_394);
            if(_loc4_.length <= param2)
            {
               this.var_394 = this.var_334;
               this.var_334 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_864 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1362 <= const_864)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_394 = Vector3d.sum(this.var_394,_loc4_);
            }
         }
      }
   }
}
