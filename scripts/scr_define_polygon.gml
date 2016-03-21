/*
 * scr_define_polygon(x1,y1, x2,y2, x3,y3, x4,y4)
 */
 
var polygon = ds_list_create();

for (var i=0;i<7;i++){
    ds_list_add(polygon, argument[i]);
}

return polygon;
