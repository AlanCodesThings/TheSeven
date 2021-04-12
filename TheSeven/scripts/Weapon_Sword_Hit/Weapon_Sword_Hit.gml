// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weapon_Sword_Hit(){
	if (objWeaponswordHB.hasHit == false){
		objWeaponswordHB.hasHit = true;
		var swordDamage = 2;
		objEnemy.hp -= swordDamage;
		show_debug_message("hit");
	}
}