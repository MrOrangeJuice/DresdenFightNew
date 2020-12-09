/// @description Insert description here
// You can write your code in this editor
image_index = 1;
switch (player){
 case 0:
	if (global.p1charConfirm){
		p1 = instance_create_layer(x, y, "Players", oHarry);
		p1.player = player;
		//oCamera.p1 = p1;
		var p1gun = instance_create_layer(x, y, "Guns", oPistol);
		p1gun.playerRef = p1;
		p1gun.player = player;
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
		p2 = instance_create_layer(x, y, "Players", oHarry);
		p2.player = player;
		var p2gun = instance_create_layer(x, y, "Guns", oPistol);
		p2gun.playerRef = p2;
		p2gun.player = player;
		//oCamera.p2 = p2;
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
		p3 = instance_create_layer(x, y, "Players", oHarry);
		p3.player = player;
		var p3gun = instance_create_layer(x, y, "Guns", oPistol);
		p3gun.playerRef = p3;
		p3gun.player = player;
		//oCamera.p3 = p3;
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
		p4 = instance_create_layer(x, y, "Players", oHarry);
		p4.player = player;
		var p4gun = instance_create_layer(x, y, "Guns", oPistol);
		p4gun.playerRef = p4;
		p4gun.player = player;
		//oCamera.p4 = p4;
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
		p5 = instance_create_layer(x, y, "Players", oHarry);
		p5.player = player;
		var p5gun = instance_create_layer(x, y, "Guns", oPistol);
		p5gun.playerRef = p5;
		p5gun.player = player;
		//oCamera.p5 = p5;
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