/// @description Mantendo a mesma posição do player

// Se o jogador morrer, destruir o escudo
if (!instance_exists(obj_player)) instance_destroy();
x = obj_player.x;
y = obj_player.y;

if (image_index <=0 ) image_alpha -=.01;


