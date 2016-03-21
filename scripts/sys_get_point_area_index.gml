/*
 * sys_get_point_area_index(x, y)
 */

var _x = argument[0];
var _y = argument[1];

var pol = ds_list_find_value(global._AREAS, global._CURRENT_ROOM);
var height = array_height_2d(pol);
    
for (var i=0;i<height;i++){
    if (sys_point_in_polygon(_x, _y, pol[i, 0])){
        return i;
    }
}

return -1;
