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
if (numConfirmed > 1 && !animation_ended) {
	image_speed = 1;
}
else if (numConfirmed > 1){
	image_index = image_number - 1;
}
else {
	image_speed = 0;
	image_index = 0;
	// Reset animation
	animation_ended = false;
}