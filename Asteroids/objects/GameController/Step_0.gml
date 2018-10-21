
//debug

/// @description update game

// if there is no player and ship debrish in the room and life > 0, create a player.


if(Life > 0 and instance_exists(obj_ship) == false and instance_exists(obj_shipDebrish) == false)
{
	instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_ship);
}

//if life = 0 go to end screen
if(Life == 0)
{
	//if explosion audio is not playing only then go to the end screen
	if(audio_is_playing(snd_Explosion) == false)
	{
		room_goto(End);
	}
	
}


//if there is no more asteroids in the room, also go to the end screen
if( instance_exists(obj_largeAsteroid) == false)
{
	if( instance_exists(obj_mediumAsteroid) == false)
	{
		if( instance_exists(obj_smallAsteroid) == false)
		{
			//if explosion audio is not playing only then go to the end screen
			if(audio_is_playing(snd_Explosion) == false)
			{
				room_goto(End);
			}
		}
	}
	
}

