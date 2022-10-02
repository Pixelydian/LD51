//TO BE USED WITH OBJECT oTransition

function RoomTransition(_type,_targetRoom){

//Safety check, if we are not already transitioning
if (!instance_exists(oTransition))
{
	with(instance_create_depth(0,0,-9999,oTransition))	
	{
		type = _type
		target = _targetRoom
	}
	
}else show_debug_message("Transition in progress");




}