/// @description Insert description here
// You can write your code in this editor
if(hp<=0)
{
	if(timer==0)//死亡第一帧
	{
		audio_stop_all();
		audio_play_sound(snd_fall1,0,false);
		sprite_index=spr_enemy_dead;
	}
	timer+=1;//计时器自加
	if(timer>180)game_restart();//重启游戏
	exit;
}
//***简单的移动逻辑
if(hited==0)//未被打击
{
	if(x>=Obj_player.x+12)//在右边
	{
		x-=0.25//左移
		image_index+=0.1;
	}
	else
	if(x<=Obj_player.x-12)//在左边
	{
		x+=0.25;//右移
		image_index+=0.1;
	}
}
else 
{
	hited-=1;//静止，等待打击效果结束

}
/*//***敌人攻击逻辑
if(state==0)//移动状态下可出招
{
	//***膝击
	alarm[0]=16;
	scr_state_set()

}
*/
if(x<=Obj_player.x&&jump==0)face=1;
else face=-1;
image_xscale=face;