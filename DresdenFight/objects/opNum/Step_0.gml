/// @description Pick color

// Change sprite depending on player color
switch(player)
{
	case 0:
		sprite_index = sp1;
		break;
	case 1:
		sprite_index = sp2;
		break;
	case 2:
		sprite_index = sp3;
		break;
	case 3:
		sprite_index = sp4;
		break;
	case 4:
		sprite_index = spkb;
		break;
}

// Hover animation
var inst = instance_place(x,y,oSelect);

if(inst != noone)
{
	if(inst.player == player)
	{
		image_index = 1;	
	}	
}

else
{
	image_index = 0;	
}