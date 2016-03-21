/*
 * sys_define_dialog(index, message, object, x, y, color)
 */
 
var ind = argument[0];

global._DIALOGS[ind,0] = argument[1];
global._DIALOGS[ind,1] = argument[2];
global._DIALOGS[ind,2] = argument[3];
global._DIALOGS[ind,3] = argument[4];
global._DIALOGS[ind,4] = argument[5];
