/// @description Insert description here
// You can write your code in this editor
//***绘制自己
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,0,c_white,1);
//***绘制血槽
draw_sprite_ext(spr_blood,hp<6,112,210,-hp,1,0,c_white,1);