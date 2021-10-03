package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1137:Sound = null;
      
      private var _soundChannel:SoundChannel = null;
      
      private var var_452:Number;
      
      private var var_1386:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1137 = param1;
         this.var_1137.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_452 = 1;
         this.var_1386 = false;
      }
      
      public function play() : Boolean
      {
         this.var_1386 = false;
         this._soundChannel = this.var_1137.play(0);
         this.volume = this.var_452;
         return true;
      }
      
      public function stop() : Boolean
      {
         this._soundChannel.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_452;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_452 = param1;
         if(this._soundChannel != null)
         {
            this._soundChannel.soundTransform = new SoundTransform(this.var_452);
         }
      }
      
      public function get position() : Number
      {
         return this._soundChannel.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1137.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1137.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this.var_1386;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.var_1386 = true;
      }
   }
}
