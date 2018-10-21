/// @description stop thruster sound

//if thruster sound is playing, stop thruster sound
if(audio_is_playing(snd_Thruster) == true)
{
	audio_stop_sound(snd_Thruster);
	//play thruster down sound only once
	audio_play_sound(snd_ThrusterDown,10,false);
}

