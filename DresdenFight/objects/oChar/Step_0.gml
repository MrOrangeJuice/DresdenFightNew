/// @description Change Background

switch(player)
{
	case 0:
		if(global.p1charConfirm)
		{
			sprite_index = sp1Background;
		}
		else
		{
			sprite_index = sStatic;	
		}
		break;
	case 1:
		if(global.p2charConfirm)
		{
			sprite_index = sp2Background;
		}
		else
		{
			sprite_index = sStatic;	
		}
		break;
	case 2:
		if(global.p3charConfirm)
		{
			sprite_index = sp3Background;
		}
		else
		{
			sprite_index = sStatic;	
		}
		break;
	case 3:
		if(global.p4charConfirm)
		{
			sprite_index = sp4Background;
		}
		else
		{
			sprite_index = sStatic;	
		}
		break;
	case 4:
		if(global.p5charConfirm)
		{
			sprite_index = sp5Background;
		}
		else
		{
			sprite_index = sStatic;	
		}
		break;
}