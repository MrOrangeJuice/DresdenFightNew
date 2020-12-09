/// @description Insert description here
// You can write your code in this editor

numAlive = 5;
if(global.p1charConfirm || global.p1health <= 0)
{
	p1dead = true;
	numAlive--;
}
if(global.p2charConfirm || global.p2health <= 0)
{
	p2dead = true;
	numAlive--;
}
if(global.p3charConfirm || global.p3health <= 0)
{
	p3dead = true;
	numAlive--;
}
if(global.p4charConfirm || global.p4health <= 0)
{
	p4dead = true;
	numAlive--;
}
if(global.p5charConfirm || global.p5health <= 0)
{
	p5dead = true;
	numAlive--;
}

if(numAlive < 2)
{
	SlideTransition(TRANS_MODE.GOTO, rWin);
}