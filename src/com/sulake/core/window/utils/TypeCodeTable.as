package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_586;
         param1["bitmap"] = const_573;
         param1["border"] = const_753;
         param1["border_notify"] = const_1431;
         param1["button"] = const_396;
         param1["button_thick"] = const_713;
         param1["button_icon"] = const_1447;
         param1["button_group_left"] = const_653;
         param1["button_group_center"] = const_769;
         param1["button_group_right"] = const_731;
         param1["canvas"] = const_684;
         param1["checkbox"] = const_606;
         param1["closebutton"] = const_1081;
         param1["container"] = const_360;
         param1["container_button"] = const_759;
         param1["display_object_wrapper"] = const_614;
         param1["dropmenu"] = const_403;
         param1["dropmenu_item"] = const_472;
         param1["frame"] = const_328;
         param1["frame_notify"] = const_1388;
         param1["header"] = const_689;
         param1["icon"] = const_1084;
         param1["itemgrid"] = const_995;
         param1["itemgrid_horizontal"] = const_413;
         param1["itemgrid_vertical"] = const_706;
         param1["itemlist"] = const_1063;
         param1["itemlist_horizontal"] = const_374;
         param1["itemlist_vertical"] = const_352;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1274;
         param1["menu_item"] = const_1299;
         param1["submenu"] = const_944;
         param1["minimizebox"] = const_1450;
         param1["notify"] = const_1482;
         param1["null"] = const_747;
         param1["password"] = const_709;
         param1["radiobutton"] = const_661;
         param1["region"] = const_577;
         param1["restorebox"] = const_1304;
         param1["scaler"] = const_605;
         param1["scaler_horizontal"] = const_1481;
         param1["scaler_vertical"] = const_1257;
         param1["scrollbar_horizontal"] = const_418;
         param1["scrollbar_vertical"] = const_761;
         param1["scrollbar_slider_button_up"] = const_929;
         param1["scrollbar_slider_button_down"] = const_1070;
         param1["scrollbar_slider_button_left"] = const_937;
         param1["scrollbar_slider_button_right"] = const_1048;
         param1["scrollbar_slider_bar_horizontal"] = const_996;
         param1["scrollbar_slider_bar_vertical"] = const_1079;
         param1["scrollbar_slider_track_horizontal"] = const_911;
         param1["scrollbar_slider_track_vertical"] = const_1066;
         param1["scrollable_itemlist"] = const_1377;
         param1["scrollable_itemlist_vertical"] = const_502;
         param1["scrollable_itemlist_horizontal"] = const_1049;
         param1["selector"] = const_752;
         param1["selector_list"] = const_743;
         param1["submenu"] = const_944;
         param1["tab_button"] = const_751;
         param1["tab_container_button"] = const_872;
         param1["tab_context"] = const_327;
         param1["tab_content"] = const_1031;
         param1["tab_selector"] = const_608;
         param1["text"] = const_630;
         param1["input"] = const_641;
         param1["toolbar"] = const_1231;
         param1["tooltip"] = const_353;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
