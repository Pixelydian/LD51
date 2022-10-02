//if alarmTrigger = false
//{

	var _nextStage = global.levels[global.currentLevel]
	with oGame clearMissions();
	RoomTransition(TRANS_TYPE.FADE,_nextStage);

	//alarmTrigger = true;
//}


