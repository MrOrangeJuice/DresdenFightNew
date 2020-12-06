/// @description Initialize variables
playerSpawned = false;
newSelect = "";
newIcon = "";
newFade = "";
newChar = "";
newCharOverlay = "";

// Pick Sprite Based on Input
if(!keyboard)
{
	sprite_index = spBox;	
}
else
{
	sprite_index = spBoxKB;	
}
