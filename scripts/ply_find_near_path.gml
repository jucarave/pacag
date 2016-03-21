/*
 * ply_find_near_path(_x, _y)
 */
 
var _x = argument[0];
var _y = argument[1];

var pol = ds_list_find_value(global._AREAS, global._CURRENT_ROOM);
var height = array_height_2d(pol);
    
var p, nx, ny, tx, ty, ndis, tdis, per;

ndis = 1000;
nx = _x;
ny = _y;

var d1, d2, d3, d4, f;

for (var i=0;i<height;i++){
    p = pol[i, 0];
    
    if ((_x >= p[0] || _x >= p[2]) && (_x < p[4] || _x < p[6])){
        tx = _x;
        
        f = 1;
        if (_y > p[3] && _y > p[7]){ f = -1; }
        
        d1 = 1000 * f; d2 = d1; d3 = d1; d4 = d1;
        
        if (_x >= p[0] && _x < p[2]){
            d1 = ply_get_edge_y(p[0], p[1], p[2], p[3], tx);
        }
        if (_x >= p[6] && _x < p[4]){
            d2 = ply_get_edge_y(p[6], p[7], p[4], p[5], tx);
        }
        if (_x >= p[2] && _x < p[6]){
            d3 = ply_get_edge_y(p[2], p[3], p[6], p[7], tx);
        }
        if (_x >= p[0] && _x < p[4]){
            d4 = ply_get_edge_y(p[0], p[1], p[4], p[5], tx) - 1;
        }
        
        if (_y < p[1] && _y < p[5]){
            ty = min(d1, d2, d3, d4);
        }else if (_y > p[3] && _y > p[7]){
            ty = max(d1, d2, d3, d4);
        }
        
        tdis = point_distance(_x,_y,tx,ty);
        if (tdis < ndis){
            nx = tx;
            ny = ty;
            ndis = tdis;
        }
    }
}

return ply_move_to(nx, ny);
