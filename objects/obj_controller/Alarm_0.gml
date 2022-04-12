/// @description Gerando inimigos1

/*
var intervalox = random_range(50, 750);
var intervaloy = random_range(-32, -150);
instance_create_layer(intervalox, intervaloy, "Enemies",obj_enemy1);

alarm[0] = room_speed * random_range(1, 3);

if (global.level > 1 && nextlevel == false)
{
	alarm[1] = room_speed;
	nextlevel = true;
}
*/
// Criando posição aleatória para inimigos
var repete = random_range(3, 6) * global.level;
repeat (repete) 
{
	var intervalox = random_range(50, room_width -50);
	if (global.level < 2)
	{
		var intervaloy = random_range(-32, -600);
	}
	else
	{
		var intervaloy = random_range(-32 , -230 * global.level)
	}
	
// Gerando inimigos
	var chance = random(10) * global.level
	if (chance > 25 && !instance_exists(obj_boss))
	{
		var inimigo2 = instance_create_layer(intervalox, intervaloy, "Enemies", obj_enemy2);
		if (global.level <= 5 ) 
		{
			inimigo2.speed = 2.5
		}
		else if (global.level <= 10)
		{
			inimigo2.speed = 2.7;
		}
		else if (global.level <= 15) 
		{
			inimigo2.speed = 3;
		}
		else 
		{
			inimigo2.speed = 3.2;
		}
		show_debug_message(inimigo2.speed)
	}
	else if (chance <= 24 && !instance_exists(obj_boss))
	{
		instance_create_layer(intervalox, intervaloy, "Enemies", obj_enemy1);
	}
	
	if (global.level == 5 && !instance_exists(obj_boss))
	{
		audio_stop_all();
		instance_create_layer(room_width/2, -50, "Enemies", obj_boss);
	}
}

alarm[0] = (room_speed * random_range(2, 12));

