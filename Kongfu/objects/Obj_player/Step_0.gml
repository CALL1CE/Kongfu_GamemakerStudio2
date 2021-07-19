/// @description Insert description here
// You can write your code in this editor
var dx,dy;//临时变量
dy=0;//上下按键状态-1上 0 1下
dx=0;//左右按键状态-1左 0 1右
psb=1;//玩家移动速度
//***按键功能
if(jump==0&&state==0)//可相应按键
{
	if(keyboard_check(ord("A")))//左
	{
		dx=-1;
		image_index+=0.1;
	}
	if(keyboard_check(ord("D")))//右
	{
		dx=1;
		image_index+=0.1;
	}
	if(keyboard_check(ord("W")))//上
	{
		dy=-1;
		jump=1;
	
	}
}

//***坐标变化
x+=dx*psb;
x+=jumpface*psb*2;

//***坐标限制
if(x<24)
{
	x=24;
	jumpface=-jumpface;
}
if(x>room_width-24)
{
	x=room_width-24;
	jumpface=-jumpface;
}
