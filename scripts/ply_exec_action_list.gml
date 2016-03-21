/*
 * ply_exec_action_list()
 */
 
var action_id = ds_list_find_value(action_list, 0);

switch (action_id){
    case E_ACTIONS.MOVE_TO: 
        var _x = ds_list_find_value(action_list, 1);
        var _y = ds_list_find_value(action_list, 2);
        
        ply_move_to(_x, _y);
        
        repeat (3){ ds_list_delete(action_list, 0); }
        
        break;
        
    case E_ACTIONS.WAIT_POSITION:
        var _x = ds_list_find_value(action_list, 1);
        var _y = ds_list_find_value(action_list, 2);
        
        if (x == _x && y == _y){
            repeat (3){ ds_list_delete(action_list, 0); }
        }
        
        break;
        
    case E_ACTIONS.CHECK_ITEM:
        var _x = ds_list_find_value(action_list, 1);
        var _y = ds_list_find_value(action_list, 2);
        
        ply_check_item(_x, _y);
        
        repeat (3){ ds_list_delete(action_list, 0); }
        break;
        
    case E_ACTIONS.USE_ITEM:
        var _x = ds_list_find_value(action_list, 1);
        var _y = ds_list_find_value(action_list, 2);
        
        ply_use_item(_x, _y);
        
        repeat (3){ ds_list_delete(action_list, 0); }
        break;
}
