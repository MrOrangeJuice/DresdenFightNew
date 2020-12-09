/// @description Insert description here
// You can write your code in this editor
instance_destroy(gunRef);
gunRef = instance_create_layer(x, y, "Guns", oShotgun);
gunRef.player = player;
gunRef.playerRef = self;