/*
 * ply_check_item(_x, _y)
 */
 
var _x = argument[0];
var _y = argument[1];

with (obj_item){
    if (sys_point_in_polygon(_x,_y,polygon)){
        if (move_on_examine && other.x != action_x && other.y != action_y){
            var ax = action_x;
            var ay = action_y;
            
            with (other){ 
                ply_add_action(E_ACTIONS.MOVE_TO, array_create(ax, ay)); 
                ply_add_action(E_ACTIONS.WAIT_POSITION, array_create(ax, ay)); 
                ply_add_action(E_ACTIONS.LOOK_AT, array_create(_x, _y));
                ply_add_action(E_ACTIONS.CHECK_ITEM, array_create(_x, _y));
            }
            
            return true;
        }
        
        with (other){ ply_look_at(_x, _y); }
        obj_dialog.dialog_index = examine_index;
        return true;
    }
}

return false;
