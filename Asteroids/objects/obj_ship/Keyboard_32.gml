/// @description trigger shoot alarm
// trigger shoot bullet alarm every 0.2 second if we haven't shot yet
if(Shot == 0)
{
	alarm[0] = room_speed * 0.2;
	Shot = 1;
}