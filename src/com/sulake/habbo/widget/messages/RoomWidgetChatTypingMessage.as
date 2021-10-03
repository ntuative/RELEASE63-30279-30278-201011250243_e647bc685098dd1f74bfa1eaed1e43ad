package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_652:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_767:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_652);
         this.var_767 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_767;
      }
   }
}
