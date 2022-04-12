/// @description Inicializando tiro

speed = 1;
direction = 270;
hp = 5;
delay = 0;

snd = audio_play_sound(snd_enemy_shoot4, 5, false);
// Também é possível girar a imagem com o comando image_angle. Lembrando que o comando pede coordenadas polares( 0, 90, 270 , 360)

audio_play_sound(snd_player_colision, 5, false);
