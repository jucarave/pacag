/*
 * sys_init_areas()
 */
 
global._AREAS = ds_list_create();
 
var bedroom;
bedroom[0, 0] = sys_define_polygon(40,139, 73,98, 149,139, 151,98);
bedroom[0, 1] = sys_define_exit(150, 120, 1);

bedroom[1, 0] = sys_define_polygon(148,179, 151,98, 156,180, 156,98);
bedroom[1, 1] = sys_define_exit(150, 120, 0);
bedroom[1, 2] = sys_define_exit(157, 144, 2);

bedroom[2, 0] = sys_define_polygon(156,180, 156,139, 320,180, 288,139);
bedroom[2, 1] = sys_define_exit(157, 144, 1);
bedroom[2, 2] = sys_define_exit(270, 138, 3);

bedroom[3, 0] = sys_define_polygon(252,139, 236,107, 287,139, 258,107);
bedroom[3, 1] = sys_define_exit(270, 138, 2);

ds_list_insert(global._AREAS, BEDROOM, bedroom);
