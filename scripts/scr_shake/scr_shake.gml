// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_shake_all(){
	

}

function scr_shake(_forca, _som, _layer)
{
	var shake =	instance_create_layer(0, 0, _layer, obj_shake);
	shake._forca = _forca;
	shake._som = _som;
}