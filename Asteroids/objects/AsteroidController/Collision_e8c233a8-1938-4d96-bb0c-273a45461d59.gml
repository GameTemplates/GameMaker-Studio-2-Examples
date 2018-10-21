/// @description collision with bullet

//delete the bullet been collided
var bulletID = obj_bullet.id;
instance_destroy(bulletID);

//if asteroid was large, create 2 medium asteroids

if(Size == "large")
{
	for(i = 0; i < 2; i++)
	{
		instance_create_layer(x, y, "Instances", obj_mediumAsteroid);
		
	}
	
	//set explosion particle size
	explSize = 1;
}

//if asteroid is medium, create 3 small asteroids
else if(Size == "medium") 
{
	for(i = 0; i < 3; i++)
	{
		instance_create_layer(x, y, "Instances", obj_smallAsteroid);
		
	}
	
	//set explosion particle size
	explSize = 0.5;
}
//if asteroid is small, set only the size of explosion
else if(Size == "small")
{
	//set explosion particle size
	explSize = 0.1;
}

//play explosion sound
audio_sound_pitch(snd_Explosion, random_range(0.5,1));
audio_play_sound(snd_Explosion,11,false);

//create explosion effect in position of asterod
effect_create_above(ef_firework, x, y, explSize, c_white);

//delete the asteroid been collided
instance_destroy();