/// @description Insert description here
// You can write your code in this editor
image_index = 1;
switch (player){
 case 0:
	if (global.p1charConfirm){
		var p1 = instance_create_layer(x, y, "Players", oHarry);
		with (instance_create_layer(x, y, "Guns", oPistol)){
			playerRef = p1;
		}
		switch(global.p1skin)
		{
			case 0:
				p1.skin = 0;
				break;
			case 1:
				p1.skin = 1;
				break;
			case 2:
				p1.skin = 2;
				break;
			case 3:
				p1.skin = 3;
				break;
			case 4:
				p1.skin = 4;
				break;
		}
	}
 break;
 case 1:
	if (global.p2charConfirm){
		var p2 = instance_create_layer(x, y, "Players", oHarry);
		instance_create_layer(x, y, "Guns", oPistol);
		switch(global.p2skin)
		{
			case 0:
				p2.skin = 0;
				break;
			case 1:
				p2.skin = 1;
				break;
			case 2:
				p2.skin = 2;
				break;
			case 3:
				p2.skin = 3;
				break;
			case 4:
				p2.skin = 4;
				break;
		}
	}
 break;
 case 2:
	if (global.p3charConfirm){
		var p3 = instance_create_layer(x, y, "Players", oHarry);
		instance_create_layer(x, y, "Guns", oPistol);
		switch(global.p3skin)
		{
			case 0:
				p3.skin = 0;
				break;
			case 1:
				p3.skin = 1;
				break;
			case 2:
				p3.skin = 2;
				break;
			case 3:
				p3.skin = 3;
				break;
			case 4:
				p3.skin = 4;
				break;
		}
	}
 break;
 case 3:
	 if (global.p4charConfirm){
		var p4 = instance_create_layer(x, y, "Players", oHarry);
		instance_create_layer(x, y, "Guns", oPistol);
		switch(global.p4skin)
		{
			case 0:
				p4.skin = 0;
				break;
			case 1:
				p4.skin = 1;
				break;
			case 2:
				p4.skin = 2;
				break;
			case 3:
				p4.skin = 3;
				break;
			case 4:
				p4.skin = 4;
				break;
		}
	}
 break;
 case 4:
	if (global.p5charConfirm){
		var p5 = instance_create_layer(x, y, "Players", oHarry);
		instance_create_layer(x, y, "Guns", oPistol);
		switch(global.p5skin)
		{
			case 0:
				p5.skin = 0;
				break;
			case 1:
				p5.skin = 1;
				break;
			case 2:
				p5.skin = 2;
				break;
			case 3:
				p5.skin = 3;
				break;
			case 4:
				p5.skin = 4;
				break;
		}
	}
 break;
}