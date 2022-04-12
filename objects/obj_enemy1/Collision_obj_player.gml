/// @description Colidindo com o player

scr_shake(20, noone, "Enemies");

audio_play_sound(snd_player_colision, 7, false);

with(other)
{
	global.life--;
}

instance_destroy();