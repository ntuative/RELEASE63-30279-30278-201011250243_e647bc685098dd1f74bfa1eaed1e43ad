package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1676:int = 0;
      
      public static const const_1288:int = 1;
      
      public static const const_1425:int = 2;
      
      public static const const_1644:int = 3;
      
      public static const const_1699:int = 4;
      
      public static const const_1726:int = 5;
      
      public static const const_1262:int = 10;
      
      public static const const_1764:int = 11;
      
      public static const const_1610:int = 12;
      
      public static const const_1697:int = 13;
      
      public static const const_1659:int = 16;
      
      public static const const_1763:int = 17;
      
      public static const const_1702:int = 18;
      
      public static const const_1567:int = 19;
      
      public static const const_1737:int = 20;
      
      public static const const_1647:int = 22;
      
      public static const const_1734:int = 23;
      
      public static const const_1643:int = 24;
      
      public static const const_1741:int = 25;
      
      public static const const_1731:int = 26;
      
      public static const const_1626:int = 27;
      
      public static const const_1565:int = 28;
      
      public static const const_1751:int = 29;
      
      public static const const_1766:int = 100;
      
      public static const const_1754:int = 101;
      
      public static const const_1672:int = 102;
      
      public static const const_1740:int = 103;
      
      public static const const_1624:int = 104;
      
      public static const const_1712:int = 105;
      
      public static const const_1714:int = 106;
      
      public static const const_1582:int = 107;
      
      public static const const_1743:int = 108;
      
      public static const const_1716:int = 109;
      
      public static const const_1681:int = 110;
      
      public static const const_1708:int = 111;
      
      public static const const_1585:int = 112;
      
      public static const const_1696:int = 113;
      
      public static const const_1703:int = 114;
      
      public static const const_1621:int = 115;
      
      public static const const_1549:int = 116;
      
      public static const const_1590:int = 117;
      
      public static const const_1616:int = 118;
      
      public static const const_1761:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1288:
            case const_1262:
               return "banned";
            case const_1425:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
