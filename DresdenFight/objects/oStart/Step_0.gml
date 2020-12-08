/// @description Check how many players have joined

numConfirmed = 0;
if(global.p1charConfirm)
{
	numConfirmed += 1;
}
if(global.p2charConfirm)
{
	numConfirmed += 1;
}
if(global.p3charConfirm)
{
	numConfirmed += 1;
}
if(global.p4charConfirm)
{
	numConfirmed += 1;
}
if(global.p5charConfirm)
{
	numConfirmed += 1;
}

// If this is the first time spawning, play spawn animation
if(hover)
{
	if(numConfirmed > 1)
	{
		sprite_index = sStartHoverRed;	
		image_speed = 1;
	}
	else
	{
		sprite_index = sStart;
		image_index = 0;
		image_speed = 0;
	}
}
else
{
	if(numConfirmed > 1)
	{
		if(!animation_ended)
		{
			sprite_index = sStart;
			image_speed = 1;
		}
		else
		{
			sprite_index = sStart;
			image_index = image_number - 1;
			image_speed = 0;
		}	
	}
	else
	{
		sprite_index = sStart;
		image_index = 0;
		animation_ended = false;	
	}
}