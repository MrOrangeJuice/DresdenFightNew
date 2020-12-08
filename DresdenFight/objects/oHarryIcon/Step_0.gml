/// @description Hover Animation

if(place_meeting(x,y,oSelect))
{
	if(image_index == 0) 	
		audio_play_sound(rollover5,2654374578,false);
	image_index = 1;
}
else
{
	image_index = 0;	
}