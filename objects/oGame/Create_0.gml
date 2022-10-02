global.res_w = 640;
global.res_h = 360;


global.currentLevel = 0;
global.levels = [rLevel1,rLevel2];

randomize();

display_set_gui_size(640,360)

instance_create_layer(0,0,"Instances",oGui)



//MISSION DATABASE

function clearMissions(){
	
levels = {level_one: [],
		level_two: []}
}

clearMissions();

function shieldComplete(_id,_level){
var _array = levels[$ _level];
var _entry = array_find_index(_array,_id)
array_delete(_array,_entry,1);

if array_length(levels[$ _level]) <= 1
{
	with oGui  missionComplete = true
	global.currentLevel++;
	show_debug_message("MISSION COMPLETE")
}
}



//room_goto(rAudioInit)
RoomTransition(TRANS_TYPE.FADE,rAudioInit)





