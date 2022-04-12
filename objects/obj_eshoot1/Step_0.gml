/// @description Destruindo o tiro
	
// É interessante usar o Room_Height como parâmetro para que o quando o código for alterado, não afete a lógica do jogo.
if (y > room_height + 32)
{
	instance_destroy();
}