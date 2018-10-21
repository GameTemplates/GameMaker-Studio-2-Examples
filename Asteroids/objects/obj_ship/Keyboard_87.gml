/// @description move ship
// update movement direction to be the direction of the ship
MovementDirection = image_angle;

//if thruster sound is not playing, play it
if(audio_is_playing(snd_Thruster) == false)
{
	audio_play_sound(snd_Thruster,10,true);
}