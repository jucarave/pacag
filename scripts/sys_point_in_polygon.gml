/* 
 * sys_point_in_polygon(x, y, polygon);
 */
 
var _x = argument[0];
var _y = argument[1];
var _p = argument[2];

var edges;

edges[0, 0] = _p[0];
edges[0, 1] = _p[1];
edges[0, 2] = _p[2];
edges[0, 3] = _p[3];

edges[1, 0] = _p[2];
edges[1, 1] = _p[3];
edges[1, 2] = _p[6];
edges[1, 3] = _p[7];

edges[2, 0] = _p[6];
edges[2, 1] = _p[7];
edges[2, 2] = _p[4];
edges[2, 3] = _p[5];

edges[3, 0] = _p[0];
edges[3, 1] = _p[1];
edges[3, 2] = _p[4];
edges[3, 3] = _p[5];

var x1, x2, y1, y2, rx, per;
var count = 0;
for (var i=0;i<4;i++){
    x1 = edges[i, 0];
    y1 = edges[i, 1];
    x2 = edges[i, 2];
    y2 = edges[i, 3];
    
    if (_y < y1 && _y < y2) continue;
    if (_y >= y1 && _y >= y2) continue;
    if (_x < x1 && _x < x2) continue;
    
    if (_x >= x1 && _x >= x2){
        count += 1;
        continue;
    }
    
    per = abs((_y - y1) / (y2 - y1));
    rx = x1 + (x2 - x1) * per;
    
    if (_x >= rx){
        count += 1;
        continue;
    }
}

if (count mod 2 == 1){
    return true;
}

return false;
