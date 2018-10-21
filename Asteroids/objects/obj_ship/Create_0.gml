/// @description Set initial values
// generate a random movement direction
MovementDirection = random(360);
//set movement speed
MovementSpeed = 4;
//set roation speed
RotationSpeed= 5;
//create a global variable to store if we have fired a shot
Shot = 0;
//set variable the player can not be destroyed
CanDestroy = false;
//launch a timer event after 3 seconds to set it true
alarm[1] = room_speed * 3;
//set player transparent while it can not be damaged
image_alpha = 0.5;