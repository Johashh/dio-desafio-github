/// @description Aumentando o level do tiro

audio_play_sound(snd_getting_powerup, 5, false);

instance_destroy(other)

if (shoot_level < 5) 
{
	shoot_level++;
}
else obj_controller.currentexp += 25;

