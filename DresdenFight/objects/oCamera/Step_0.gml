/// @description Insert description here
// You can write your code in this editor
numConfirmed = 0;
if (p1 != 0)
{
	xTo += p1.x;
	yTo += p1.y;
	numConfirmed++;
}
if (p2 != 0)
{
	xTo += p2.x;
	yTo += p2.y;
	numConfirmed++;
}
if (p3 != 0)
{
	xTo += p3.x;
	yTo += p3.y;
	numConfirmed++;
}
if (p4 != 0)
{
	xTo += p4.x;
	yTo += p4.y;
	numConfirmed++;
}
if (p5 != 0)
{
	xTo += p5.x;
	yTo += p5.y;
	numConfirmed++;
}

xTo /= numConfirmed;
yTo /= numConfirmed;

// Update object position
x += (xTo - x) / 12;
y += (yTo - y) / 12;

// Keep camera center inside room
x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

// Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);