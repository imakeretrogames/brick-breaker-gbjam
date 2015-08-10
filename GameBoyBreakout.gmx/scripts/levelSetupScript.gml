//Draw the level

global.brickCount = 90;
instance_create(room_width / 3, room_height * .9, paddleObject);
instance_create(room_width / 3, room_height * .85, ballObject);

//determine how low the game pieces should be drawn, based on what level it is.
verticalOffset = 8 + 8*global.level;
horizontalOffset = 16;

//If we're at a higher level than 1, draw the barrier objects.
    if(global.level != 1)
    {
        for(i = 0; i < 12; i++)
        {
            for(j = 0; j < global.level - 1; j++)
            {
                instance_create(8*i+8, 8+8*j, barrierObject);
            }
        }
        verticalOffset = 16 + 8*(global.level-1);
    }

//draw the bricks
for(i = 0; i < 10; i++)
{

    for(j = 0; j < 4; j++)
    {
        instance_create(8*i + horizontalOffset, 4*j + verticalOffset, darkBrickObject);
    }
    
    for(j = 0; j < 3; j++)
    {
        instance_create(8*i + horizontalOffset, 16+ 4*j + verticalOffset, mediumBrickObject);
    }
    
    for(j = 0; j < 2; j++)
    {
        instance_create(8*i + horizontalOffset, 28 + 4*j + verticalOffset, lightBrickObject);
    }
    
}
