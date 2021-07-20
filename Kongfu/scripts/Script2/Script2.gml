// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_set2(argument0,argument1,argument2,argument3,argument4,argument5){
	sprite_index=argument0;
	image_index=argument1;
	state=argument2;
	alarm[0]=argument3;//出招定格帧数
	var dx,dy;
	dx=argument4;//x+26*image_xscale;
	dy=argument5;//y-16;
	audio_play_sound(snd_atk1,0,false)//(索引，优先级，循环)
	if(collision_point(dx,dy,Obj_player,0,0))
	{
		if(Obj_player.hp>0)
		{
			audio_play_sound(snd_hit1,0,false)
			
			instance_create_depth(dx,dy,-1,Obj_fx);
			Obj_player.hp-=1;
			
		}
	}

}