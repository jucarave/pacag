/*
 * ply_move_to(x, y)
 */
 
var _x = argument[0];
var _y = argument[1];

var pol = ds_list_find_value(global._AREAS, global._CURRENT_ROOM);
var height = array_height_2d(pol);
    
var pip = false;
for (var i=0;i<height;i++){
    if (sys_point_in_polygon(_x, _y, pol[i, 0])){
        pip = true;
        
        if (i == area){
            target[0] = _x;
            target[1] = _y;
            path = -1;
            path_ind = -1;
        }else{
            path = sys_find_path(x, y, _x, _y, area, i);
            path_ind = 1;
            target[0] = path[2];
            target[1] = path[3];
            i = height;
        }
    }
}

if (pip){
    state = E_PSM.WALK;
}

return pip;
