/// @description Inicializando tiro

speed = 5;
if (instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y); // Este comando irá fazer o objeto apontar para o alvo
	// x1 e y1 é a propria posição do objeto enquanto que x2 e y2 é a posição do alvo
	// Também é possível girar a imagem com o comando image_angle. Lembrando que o comando pede coordenadas polares( 0, 90, 270 , 360)
} else direction = 270;

audio_play_sound(snd_enemy_shoot, 5, false);