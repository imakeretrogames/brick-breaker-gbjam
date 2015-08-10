//Check to see if the player missed the ball. If they did, decrement lives
//destroy the game ball and serve another one.
show_debug_message("Level: " + global.level + " BrickCount: " + global.brickCount);

if(y >= room_height)
{
    global.playerLives -= 1;
    instance_create( room_width / 3, room_height *.85, ballObject );
    instance_destroy();
    audio_play_sound(lifeLostSound, 10, false);
}


//If the gameball hits the upper boundary of the level, or a barrierObject, reverse it's vertical speed

if(y <= 8 || place_meeting(x,y,barrierObject))
{
    vspeed = -vspeed;
    y = yprevious;
}


//If the gameball hits a side boundary of the level, reverse it's horiontal speed.

if(x <= 8)
{
    x = 9;
    hspeed = -hspeed;
    
}

if(x >= 104)
{
    x = 103;
    hspeed = -hspeed;
    
}

/*if(x<=8 && hspeed != abs(hspeed))
{
    x=12;
    hspeed = -hspeed;
}

if(x<=104 && hspeed == abs(hspeed))
{
    x=100;
    hspeed = -hspeed;
}*/

//If the ball hits the paddle, make a triangle with three points 
//to determine the angle the ball should be sent off at.

if(place_meeting(x, y, paddleObject))
{   
    direction = radtodeg(arctan2(paddleObject.y - (paddleObject.y + 16), paddleObject.x - paddleObject.x) - arctan2(y - (paddleObject.y + 16), x - paddleObject.x)) + 90;    
}


//If the ball hits a light brick, bounce the ball, destroy the brick and
//add 50 points

if(place_meeting(x, y, lightBrickObject))
{
    //record the position of the block the ball hit, destroy that block
    with(instance_position(x,y,lightBrickObject))
    {
        instance_destroy();
        global.playerScore += 50;
        ballObject.x = ballObject.xprevious;
        ballObject.y=ballObject.yprevious;
        ballObject.vspeed = -ballObject.vspeed;
        
    }
}

if(place_meeting(x, y, darkBrickObject))
{
    //record the position of the block the ball hit, destroy that block
    with(instance_position(x,y,darkBrickObject))
    {
        instance_destroy();
        global.playerScore += 200;
        ballObject.x = ballObject.xprevious;
        ballObject.y=ballObject.yprevious;
        ballObject.vspeed = -ballObject.vspeed;
    }
}


if(place_meeting(x, y, mediumBrickObject))
{
    //record the position of the block the ball hit, destroy that block
    with(instance_position(x,y,mediumBrickObject))
    {
        instance_destroy();
        global.playerScore += 100;
        ballObject.x = ballObject.xprevious;
        ballObject.y=ballObject.yprevious;
        ballObject.vspeed = -ballObject.vspeed;
    }
}

