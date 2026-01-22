//se hit n esta acontecendo e hit n esta em cooldown
if hit = 0 && hitcool = 0 
{
	hit = 1 //hit acontece
	hitcool = 25 //hit entra em cooldown
	
	life -= other.dmg //perde vida igual ao dano da arma
	
	alarm[0] = 10 //reseta o hit
}