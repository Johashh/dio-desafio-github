/// @description Colidindo com tiro 4

audio_play_sound(snd_explosion, 5, false);
with(other)
{
	hp--;
}
instance_destroy();

global.enemy_killed++;