 /// @description Configurando Tiros

if (y > 32 && natela == false)
{
	alarm[0] = room_speed * random_range(.3, .5);
	natela = true;
}

if (natela && movendo == false) // Ele está aparecendo?
{
	if (y < room_height/3)		// Ele está acima de 1/3 da altura
	{
		if (x > room_width/2)	// Ele está na direita?
		{
			hspeed = -2;
			movendo = true;
		}
		else					// Ele está na esquerda
		{
			hspeed = 2;
			movendo = true;
		}
	}
}
// É interessante usar o Room_Height como parâmetro para que o quando o código for alterado, não afete a lógica do jogo.
if (y > room_height + 100 or (x < -64 or x > 864) or instance_exists(obj_boss))
{
	instance_destroy();
}
