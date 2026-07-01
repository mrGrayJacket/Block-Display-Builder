# functionality
execute if predicate bdb:holding_start_item run function bdb:into_entity/start_manager
execute if predicate bdb:holding_stop_item run function bdb:into_entity/stop
execute if predicate bdb:holding_tag_item run dialog show @s bdb:tag
execute if predicate bdb:holding_delete_item run function bdb:into_entity/kill
execute if predicate bdb:holding_cancel_item run function bdb:cancel
execute if predicate bdb:holding_show_menu_item run function bdb:show_menu
execute if predicate bdb:holding_reset_all_item run function bdb:selection/get_pos
execute if predicate bdb:holding_reset_pos3_item run function bdb:selection/pos3_reselected
# pos 3 positioning
#align and center
execute if predicate bdb:pos3_positioning/holding_align_center_item run function bdb:selection/pos3_positioning/align_center

# tp value
execute if predicate bdb:pos3_positioning/holding_tp_value_item run function bdb:dynamic_menus/tp_value/pre_menu
