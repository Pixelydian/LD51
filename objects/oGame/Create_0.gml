global.res_w = 640;
global.res_h = 360;


global.currentLevel = 0;
global.levels = [rLevel1,rLevel2,rLevel5,rLevel4,rLevel3,rLevel6,rLevel7,rLevel8,rLevel9,rLevel10,rGameEnd];

randomize();

display_set_gui_size(640,360)

//instance_create_layer(0,0,"Instances",oGui)



//MISSION DATABASE

function clearMissions(){
	
levels = { level_one:[],
	      level_two:[],
		  level_three:[],
		  level_four:[],
		  level_five:[],
		  level_six:[],
		   level_seven:[],
		    level_eight:[],
			level_nine:[],
			level_ten:[]
		}
}

clearMissions();

function shieldComplete(_id,_level){
var _array = levels[$ _level];
var _entry = array_find_index(_array,_id)
array_delete(_array,_entry,1);
show_debug_message("ARRAY"+string(levels[$ _level]))
show_debug_message("ARRAY LENGTH"+string(array_length(levels[$ _level])));
if array_length(levels[$ _level]) <= 1
{
	with oGui  missionComplete = true
	global.currentLevel++;
	show_debug_message("MISSION COMPLETE")
}
}




RoomTransition(TRANS_TYPE.FADE,rAudioInit)
//RoomTransition(TRANS_TYPE.FADE,rMenu)







