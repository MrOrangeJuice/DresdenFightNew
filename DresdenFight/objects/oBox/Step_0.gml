/// @description Spawn and despawn player

// Spawn and Despawn
if(!keyboard)
{
	if(gamepad_button_check_pressed(player,gp_face1) && !playerSpawned)
	{
		newSelect = instance_create_layer(x,y,"Mice",oSelect);
		newSelect.player = player;
		
		newIcon = instance_create_layer(x,y + 94,"Elements",opNum);
		newIcon.player = player;
		
		newFade = instance_create_layer(x,y - 26,"Fade",oFadeIn);
		newFade.player = player;
		
		newChar = instance_create_layer(x,y - 26,"Elements",oChar);
		newChar.player = player;
		
		newCharOverlay = instance_create_layer(x,y - 26,"Fade",oCharOverlay);
		newCharOverlay.player = player;
		
		switch(player)
		{
			case 0:
				sprite_index = sp1BoxJoin;
				break;
			case 1:
				sprite_index = sp2BoxJoin;
				break;
			case 2:
				sprite_index = sp3BoxJoin;
				break;
			case 3:
				sprite_index = sp4BoxJoin;
				break;
		}
		playerSpawned = true;
	}
	
	if(gamepad_button_check_pressed(player,gp_face2) && playerSpawned)
	{
		switch(player)
		{
			case 0:
				if(global.p1charConfirm)
				{
					global.p1charConfirm = false;
				}
				else
				{
					instance_destroy(newSelect);
					instance_destroy(newIcon);
					instance_destroy(newFade);
					instance_destroy(newChar);
					instance_destroy(newCharOverlay);	
					sprite_index = spBox;
					playerSpawned = false;
				}
				break;
			case 1:
				if(global.p2charConfirm)
				{
					global.p2charConfirm = false;
				}
				else
				{
					instance_destroy(newSelect);
					instance_destroy(newIcon);
					instance_destroy(newFade);
					instance_destroy(newChar);
					instance_destroy(newCharOverlay);	
					sprite_index = spBox;
					playerSpawned = false;
				}
				break;
			case 2:
				if(global.p3charConfirm)
				{
					global.p3charConfirm = false;
				}
				else
				{
					instance_destroy(newSelect);
					instance_destroy(newIcon);
					instance_destroy(newFade);
					instance_destroy(newChar);
					instance_destroy(newCharOverlay);	
					sprite_index = spBox;
					playerSpawned = false;
				}
				break;
			case 3:
				if(global.p4charConfirm)
				{
					global.p4charConfirm = false;
				}
				else
				{
					instance_destroy(newSelect);
					instance_destroy(newIcon);
					instance_destroy(newFade);
					instance_destroy(newChar);
					instance_destroy(newCharOverlay);	
					sprite_index = spBox;
					playerSpawned = false;
				}
				break;
		}
	}
}
else
{
	if(keyboard_check_pressed(ord("P")) && !playerSpawned)
	{
		newSelect = instance_create_layer(x,y,"Mice",oSelect);
		newSelect.player = player;
		newSelect.keyboard = keyboard;
		
		newIcon = instance_create_layer(x,y + 94,"Elements",opNum);
		newIcon.player = player;
		
		newFade = instance_create_layer(x,y - 26,"Fade",oFadeIn);
		newFade.player = player;
		
		newChar = instance_create_layer(x,y - 26,"Elements",oChar);
		newChar.player = player;
		
		newCharOverlay = instance_create_layer(x,y - 26,"Fade",oCharOverlay);
		newCharOverlay.player = player;
		
		sprite_index = sp5BoxJoin;
		playerSpawned = true;
	}
	if(keyboard_check_pressed(ord("O")) && playerSpawned)
	{
		if(global.p5charConfirm)
		{
			global.p5charConfirm = false;	
		}
		else
		{
			instance_destroy(newSelect);
			instance_destroy(newIcon);
			instance_destroy(newFade);
			instance_destroy(newChar);
			instance_destroy(newCharOverlay);
			sprite_index = spBoxKB;
			playerSpawned = false;
		}
	}
}