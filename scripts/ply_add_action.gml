/*
 * ply_add_action(type, params)
 */
 
var action_id = argument[0];
var params = argument[1];

switch (action_id){
    case E_ACTIONS.MOVE_TO:
        ds_list_add(action_list, E_ACTIONS.MOVE_TO, params[0], params[1]);
        break;
        
    case E_ACTIONS.WAIT_POSITION:
        ds_list_add(action_list, E_ACTIONS.WAIT_POSITION, params[0], params[1]);
        break;
        
    case E_ACTIONS.CHECK_ITEM:
        ds_list_add(action_list, E_ACTIONS.CHECK_ITEM, params[0], params[1]);
        break;
        
    case E_ACTIONS.USE_ITEM:
        ds_list_add(action_list, E_ACTIONS.USE_ITEM, params[0], params[1]);
        break;
        
    case E_ACTIONS.LOOK_AT:
        ds_list_add(action_list, E_ACTIONS.LOOK_AT, params[0], params[1]);
        break;
}
