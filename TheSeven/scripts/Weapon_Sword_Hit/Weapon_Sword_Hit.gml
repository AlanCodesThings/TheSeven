// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weapon_Sword_Hit(){
	var monsterID = argument0;
	switch (objPlayer.stateAttack){
		case ATTACKSTATE.AUTO:
			with(monsterID){
				var swordDamage = 4;
				hp -= swordDamage;
				flash = 5;
				}	
				break;
		case ATTACKSTATE.GETSUGA:
			with(monsterID){
				var swordDamage = 1;
				hp -= swordDamage;
				flash = 5;
				}	
				break;
		
	}
}
return -1;
	
	
	
	
	
