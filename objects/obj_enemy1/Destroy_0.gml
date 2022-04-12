/// @description Efeito de explsão

instance_create_layer(x, y, "Enemies", obj_explosion);
var chance = random(99);
if (chance + global.level >  95) // 5% de chance de drop
{
	instance_create_layer(x, y, "Enemies", obj_powerup);
}
