// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weapon_Sword_Hit(){
	var monsterID = argument0;
	switch (objPlayer.stateAttack){
		case ATTACKSTATE.AUTO:
			with(monsterID){
				if (invulAuto == false){
				var swordDamage = 4;
				hp -= swordDamage;
				flash = 5;
				invulAuto = true;}
				}	
				break;
		case ATTACKSTATE.GETSUGA:
			with(monsterID){
				if (invulGetsuga == false){
				var swordDamage = 1;
				hp -= swordDamage;
				flash = 5;
				invulGetsuga = true;}
				}	
				break;
		
	}
}
return -1;
	
	
	
	
	
