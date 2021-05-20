/// @description Insert description here
// You can write your code in this editor
//SIMULATE RETURNING TO CAMP (FINISHING THE RUN INTENTIONALLY TO SAVE LEVEL AND PROGRESS)
if(room == Cave){
	if(level > maxLevel){
		maxLevel = level;
	}
	hitpoints = maxHitpoints;
	level = 0;
	room_goto(Camp);
}