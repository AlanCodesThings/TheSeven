/// @description State switching

 
switch (enemyState) 
{
	case ENEMYSTATE.FREE:
		Enemy_Free();
		break;
	case ENEMYSTATE.DEAD:
		Enemy_Dead(coinOdds,maxCoins);
		break;	
}



