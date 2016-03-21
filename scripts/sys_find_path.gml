/*
 * sys_find_path(x1, x2, y1, y2, origin, destiny)
 */
 
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var origin = argument[4];
var destiny = argument[5];

var pol = ds_list_find_value(global._AREAS, global._CURRENT_ROOM);
var height = array_length_2d(pol, origin);

var path;
var visitedNodes;

path[0] = -1;
visitedNodes[0] = -1;

path = sys_check_exits(pol, path, visitedNodes, origin, destiny);

var ret, xd, yd;

var count = 0;
ret[count++] = x1;
ret[count++] = y1;

if (is_array(path)){
    var length = array_length_1d(path);
    for (var i=1;i<length-1;i++){
        var jlen = array_length_2d(pol, path[i]);
        for (var j=1;j<jlen;j++){
            var ex = pol[path[i], j];
            var ex_no = ex[2];
            
            if (ex_no == path[i+1]){
                xd = ex[0];
                yd = ex[1];
                j = jlen;
            }
        }
        ret[count++] = xd;
        ret[count++] = yd;
    }
}

ret[count++] = x2;
ret[count++] = y2;

var y1, y2, y3;
for (var i=1;i<count-4;i+=2){
    y1 = ret[i];
    y2 = ret[i+2];
    y3 = ret[i+4];
    
    if ((y1 < y2 && y3 < y2) || (y1 > y2 && y3 > y2)){
        if (sys_get_point_area_index(ret[i+1], y1) != -1){
            ret[i+2] = y1;
        }
    }
}

return ret;
