/// @description end game

//if number of brick in the room is 0, go to a random room
if(instance_number(obj_Brick) == 0)
{
	randomize();
	room_goto(random(2));
}