/// @description Colidindo com o player

scr_shake(50, noone, "Enemies");

instance_destroy();

//Ao acertar o player, ele perde 1 de vida
// Com o comanto with, tudo dentro do bloco será executado no escopo do parametro. Neste caso, other = player
with(other)
{
	global.life--; 
}