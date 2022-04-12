/// @description Colidindo com o inimigo1

audio_play_sound(snd_explosion, 5, false);
instance_destroy(); // Destruindo o próprio tiro
instance_destroy(other); // Destruindo inimigo
						 // O other se refere a instancia do objeto que o tiro esta colidindo

obj_controller.currentexp += 2;
instance_create_layer(x, y, "instances", obj_shoot_explosion);

global.enemy_killed++;

