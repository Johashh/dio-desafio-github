 /// @description Configurando Tiros e Destruindo

if (y > 32 && natela == false)
{
	alarm[0] = room_speed * random_range(.3, .5);
	natela = true;
}

// É interessante usar o Room_Height como parâmetro para que o quando o código for alterado, não afete a lógica do jogo.
if (y > room_height + 100 or instance_exists(obj_boss))
{
	instance_destroy();
}
