/// @description update ball

//move ball toward direction
x += lengthdir_x(SpeedX, Direction);
y += lengthdir_y(SpeedY, Direction);

//if the ball hit the edge of the screen, change direction
if(x >= room_width - sprite_width or x <= 0)
{
	SpeedX *= -1;
}

if(y <= 0)
{
	SpeedY *= -1;
}

//if the ball, leave the screen, set position back to the top and reduce life
if(y > room_height)
{
	y = 0;
	
	if(Life > 0)
	{
		Life -= 1;
	
		//delete life objects
		with(obj_Life)
		{
			instance_destroy();
		}
	
		//create life objects again
		var lx = 10;
		var ly = 10;
		for(i = 0; i < Life; i++)
		{
			instance_create_layer(lx, ly, "GUI", obj_Life);
			lx += obj_Life.sprite_width;
		}
	}
	else
	{
		//go to end room
		room_goto(End);
	}
	
	//play crash sound
	audio_play_sound(snd_Crash, 1, false);
}