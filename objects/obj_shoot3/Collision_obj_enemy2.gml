/// @description Colidindo com inimigo2

instance_destroy(other); // Destruindo inimigo

obj_controller.currentexp += 5;
instance_create_layer(x, y, "instances", obj_shoot_explosion);
global.enemy_killed++;