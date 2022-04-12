/// @description Colidindo com o player

scr_shake(50, noone, "Enemies");

audio_play_sound(snd_player_colision, 5, false);

instance_destroy();

//Ao acertar o player, ele perde 1 de vida
// Com o comanto with, tudo dentro do bloco será executado no escopo do parametro. Neste caso, other = player
with(other)
{
	global.life--; 
}