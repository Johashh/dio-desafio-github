/// @description Mudando aparencia

draw_self();

gpu_set_blendmode(bm_add)

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale+.3, image_yscale+.3, image_angle, cor, image_alpha)

gpu_set_blendmode(bm_normal)