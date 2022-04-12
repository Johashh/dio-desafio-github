/// @description Insert description here

// Herdando atributos da classe pai, memso alterando ou criando outros
event_inherited();

// x/ystart é o comando para saber onde um objeto foi instanciado, ou seja sua posição
// O comando clamp(var, min, max) verifica se o argumento var está dentro do intevalo (min, max)

if (x != clamp(x, xstart-30, xstart+30))
{
	hspeed *= -1;
}