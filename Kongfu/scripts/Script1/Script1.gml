// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_set(argument0,argument1,argument2){
	sprite_index=spr_player_atk;
	image_index=argument0;
	state=argument1;
	timer=argument2;//出招定格帧数
	var dx,dy;
	dx=x+26*image_xscale;
	dy=y-16;
	audio_play_sound(snd_atk1,0,false)//(索引，优先级，循环)
	if(collision_point(dx,dy,Obj_enemy,0,0))
	{
		if(Obj_enemy.hp>0)
		{
			audio_play_sound(snd_hit1,0,false)
			timer+=16;
			instance_create_depth(dx,dy,-1,Obj_fx);
			Obj_enemy.hp-=1;
			Obj_enemy.hited=16;
		}
	}

}