/// @description Insert description here
// You can write your code in this editor
if(other.player != self.player)
{
	other.flash = 5;
	switch(other.player)
	{
		case 0:
			global.p1health = global.p1health - 10;
		break;
		case 1:
			global.p2health = global.p2health - 10;
		break;
		case 2:
			global.p3health = global.p3health - 10;
		break;
		case 3:
			global.p4health = global.p4health - 10;
		break;
		case 4:
			global.p5health = global.p5health - 10;
		break;
	}
	
	instance_destroy();
}
