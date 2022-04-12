/// @description Insert description here
// You can write your code in this editor

if (room == rm_score) 
{
	draw_set_font(fnt_tittle);
	draw_set_halign(fa_center);
	draw_text(room_width/2, 200, "Score");
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_exibir)
	draw_text(room_width/2, room_height/2, "Deepest Point: " + string(global.maxpoints));
	draw_text(room_width/2, (room_height/2) + 40, "Enemies Killed: " + string(global.max_enemykilled));
	draw_set_halign(fa_left);
}