/*
 * sys_check_exists(area, path, visitedNodes, node, destiny)
 */
 
var area = argument[0];
var path = argument[1];
var visitedNodes = argument[2];
var node = argument[3];
var destiny = argument[4];

var length = array_length_2d(area, node);

var path2 = array_copy(path);

path2[array_length_1d(path2)] = node;
visitedNodes[array_length_1d(visitedNodes)] = node;

if (node == destiny){
    return path2;
}

for (var i=1;i<length;i++){
    var ex = area[node, i];
    
    var ex_node = ex[2];
    if (array_index_of(visitedNodes, ex_node) != -1){ continue; }
    
    var ret = sys_check_exits(area, path2, visitedNodes, ex_node, destiny);
    if (is_array(ret)){
        return ret;
    }
}

return noone;
