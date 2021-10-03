package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_177;
         param1["bound_to_parent_rect"] = const_89;
         param1["child_window"] = const_1009;
         param1["embedded_controller"] = const_915;
         param1["resize_to_accommodate_children"] = const_67;
         param1["input_event_processor"] = const_45;
         param1["internal_event_handling"] = const_638;
         param1["mouse_dragging_target"] = const_227;
         param1["mouse_dragging_trigger"] = const_380;
         param1["mouse_scaling_target"] = const_265;
         param1["mouse_scaling_trigger"] = const_423;
         param1["horizontal_mouse_scaling_trigger"] = const_245;
         param1["vertical_mouse_scaling_trigger"] = const_231;
         param1["observe_parent_input_events"] = const_906;
         param1["optimize_region_to_layout_size"] = const_516;
         param1["parent_window"] = const_1072;
         param1["relative_horizontal_scale_center"] = const_178;
         param1["relative_horizontal_scale_fixed"] = const_133;
         param1["relative_horizontal_scale_move"] = const_345;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1014;
         param1["relative_scale_fixed"] = const_587;
         param1["relative_scale_move"] = const_1016;
         param1["relative_scale_strech"] = const_918;
         param1["relative_vertical_scale_center"] = const_170;
         param1["relative_vertical_scale_fixed"] = const_125;
         param1["relative_vertical_scale_move"] = const_369;
         param1["relative_vertical_scale_strech"] = const_362;
         param1["on_resize_align_left"] = const_574;
         param1["on_resize_align_right"] = const_505;
         param1["on_resize_align_center"] = const_440;
         param1["on_resize_align_top"] = const_788;
         param1["on_resize_align_bottom"] = const_450;
         param1["on_resize_align_middle"] = const_470;
         param1["on_accommodate_align_left"] = const_896;
         param1["on_accommodate_align_right"] = const_486;
         param1["on_accommodate_align_center"] = const_693;
         param1["on_accommodate_align_top"] = const_964;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_750;
         param1["route_input_events_to_parent"] = const_426;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_1056;
         param1["scalable_with_mouse"] = const_1050;
         param1["reflect_horizontal_resize_to_parent"] = const_424;
         param1["reflect_vertical_resize_to_parent"] = const_454;
         param1["reflect_resize_to_parent"] = const_283;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
