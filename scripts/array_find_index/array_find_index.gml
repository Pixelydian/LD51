///@func array_find_index(array,value)
//_array = the array to search
//_val = what am I searching for in the array?
//This function will search through an array and return the slot number. Example: This is useful when asking,
//What slot number is my var "hp" in the array?

function array_find_index(_array,_val){
	for (var i = 0; i < array_length(_array); i++){
		if _array[i] == _val
		{
			return i	
		}
		
	}
	return -1	//Could be undefined. We are using -1 because that is what a ds_list would say.
}