/*
 * sys_init_dialogs()
 */
 
global._DIALOGS[4,4] = -1;

// DL_EX_PNT: Examine painting in bedroom
sys_define_dialog(0, "I bought this painting some time ago to help and light my room...", obj_player, 0, 0, c_white);
sys_define_dialog(1, "But I don't like it that much anymore.", obj_player, 0, 0, c_white);
global._DIALOGS[2,0] = -1;

// DL_AC_PNT: Action on painting in bedroom
sys_define_dialog(3, "Better leave it there until I buy a replacement.", noone, 160, 100, c_green);
global._DIALOGS[4,0] = -1;
