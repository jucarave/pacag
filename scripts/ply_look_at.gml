/*
 * ply_look_at(x, y)
 */
 
var _x = argument[0];
var _y = argument[1];

var dir = point_direction(x,y,_x,_y);
    
if (dir >= 315 || dir < 45){ st_dir = "_right"; }else
if (dir >= 45 && dir < 135){ st_dir = "_back"; }else
if (dir >= 135 && dir < 225){ st_dir = "_left"; }else
if (dir >= 225 && dir < 315){ st_dir = "_front"; }
