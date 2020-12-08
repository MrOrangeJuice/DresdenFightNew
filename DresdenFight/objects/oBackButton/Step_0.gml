/// @description Hover Animation

if(place_meeting(x,y,oSelect) || place_meeting(x,y,oSelectLevel))
{
	if(image_index == 0) 	
		audio_play_sound(click1,2654374578,false);
	image_index = 1;
}
else
{
	image_index = 0;	
}