/*
 * ply_get_edge_y(x1, y1, x2, y2, _x)
 */
 
var x1, y1, x2, y2, _x, per;

x1 = argument[0];
y1 = argument[1];
x2 = argument[2];
y2 = argument[3];
_x = argument[4];

per = (_x - x1) / (x2 - x1);

return round(y1 - (y1 - y2) * per);
