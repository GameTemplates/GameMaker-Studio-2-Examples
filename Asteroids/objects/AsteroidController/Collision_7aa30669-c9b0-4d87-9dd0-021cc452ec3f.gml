/// @description colliding with ship

with(obj_ship)
{
	//run this only if player can destroy
	if(CanDestroy == true)
	{
		//create 3 instances of ship debrish object in position of player ship
		for(i = 0; i < 3; i++)
		{
			inst = instance_create_layer(x, y, "Instances", obj_shipDebrish);
			inst.image_index = i;
		}
	
		//create explosion effect in position of ship
		effect_create_above(ef_firework, x, y, 0.1, c_white);
	
		//play explosion sound
		audio_play_sound(snd_Explosion,11,false);
	
		//delete ship
		instance_destroy();
	
		//make sure thruster sound is not playing after the ship is destroyed
		if(audio_is_playing(snd_Thruster) == true)
		{
			audio_stop_sound(snd_Thruster);
			audio_play_sound(snd_ThrusterDown,10,false);
		}
	
		//reduce life by 1
		with(GameController)
		{
			Life -= 1;
		}
	}
	
}

