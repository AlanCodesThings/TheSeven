// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weapon_Sword_Hit(){
	
	
	var monsterID = argument0;
	switch (objPlayer.stateAttack){
		case ATTACKSTATE.AUTO:
			with(monsterID){
				if (invulAuto == false){
				var swordDamage = 3 ;
				var autoRange = irandom_range(swordDamage, swordDamage+2) ;
				var currentHit = undefined;
				var currentHitID= undefined;
				if(hp > 0){
						currentHit = instance_create_layer(x + irandom_range(-10,10), y + irandom_range(-10,10), "Objects", objEnemyhit)
						currentHitID =currentHit.id;
						objEnemyhit.enemyhitBy = "auto";
					}
				
				
				hp -= autoRange;
				enemyHitNumber = autoRange;
				
				if (currentHitID != undefined){
					if (currentHit.dmgnumberReset == true){
						currentHit.damage = enemyHitNumber;
					}
				}
				flash = 5;
				show_debug_message(enemyHitNumber);
				invulAuto = true;}
				}	
				break;
		case ATTACKSTATE.ABILITY:
			with(monsterID){
				if (invulGetsuga == false){
				var swordDamage = 1 ;
				var autoRange = irandom_range(swordDamage, swordDamage+2) ;
				var currentHit = undefined;
				var currentHitID= undefined;
				if(hp > 0){
						currentHit = instance_create_layer(x + irandom_range(-10,10), y + irandom_range(-10,10), "Objects", objEnemyhit)
						currentHitID =currentHit.id;
						objEnemyhit.enemyhitBy = "getsuga";
					}
				
				
				hp -= autoRange;
				enemyHitNumber = autoRange;
				
				if (currentHitID != undefined){
					if (currentHit.dmgnumberReset == true){
						currentHit.damage = enemyHitNumber;
					}
				}
				flash = 5;
				show_debug_message(enemyHitNumber);
				invulGetsuga = true;}
				}	
				break;
		
	}
}
return -1;
	
	
	
	
	
