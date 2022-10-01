global.res_w = 640;
global.res_h = 360;



randomize();

display_set_gui_size(640,360)

instance_create_layer(0,0,"Instances",oGui)



//MISSION DATABASE

levels = {level_one: []};



function shieldComplete(_id,_level){
var _array = levels[$ _level];
var _entry = array_find_index(_array,_id)
array_delete(_array,_entry,1);

if array_length(levels[$ _level]) <= 1
{
	with oGui  missionComplete = true
	show_debug_message("MISSION COMPLETE")
}
}






