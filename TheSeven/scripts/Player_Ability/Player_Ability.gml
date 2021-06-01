function Player_Ability(){
	//change player state
	stateAttack = ATTACKSTATE.ABILITY;
	//Ability state refers to the current ability being used... allows for multiple abilities
	if (abilityState == ABILITYSTATE.GETSUGA){
		//check mana cost and play sound
		if (manaPoints >= abilityCost){ 
			if(objPlayer.abilitySoundPlayed == false){
				audio_play_sound(sndGetsuga,10,false);
				objPlayer.abilitySoundPlayed = true;
			}
			//change sprite depending on current direction
		switch (sprite_index){
			case  sPlayerdown:
				sprite_index = sAbilityGetsugaDown;
				image_index = 0;
				break;
			case  sPlayerdownidol:
				sprite_index = sAbilityGetsugaDown;
				image_index = 0;
				break;
			case  sPlayerup:
				sprite_index = sAbilityGetsugaUp;
				image_index = 0;
				break;
			case   sPlayerupidol:
				sprite_index = sAbilityGetsugaUp;
				image_index = 0;
				break;
			case sPlayerright:
				sprite_index = sAbilityGetsugaRight;
				image_index = 0;
				break;	
			case sPlayerrightidol:
				sprite_index = sAbilityGetsugaRight;
				image_index = 0;
				break;	
			case sPlayerleft :
				sprite_index = sAbilityGetsugaLeft;
				image_index = 0;
				break;		
			case sPlayerleftidol:
				sprite_index = sAbilityGetsugaLeft;
				image_index = 0;
				break;
				}
			//if a ability isnt currently created, then create the getsuga and reduce the mana cost
			if (objPlayer.abilityCreated = false){
				objPlayer.abilityCreated = true;
				instance_create_layer(x,y,"Objects", objGetsuga);
				manaPoints -= abilityCost;
				}
			} else state = PLAYERSTATE.FREE;
	}
}
