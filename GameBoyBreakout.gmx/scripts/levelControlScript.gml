//If we're out of bricks, advance the level.
//If we're out of lives, go to the gameover screen with gameover message
//If we're out of levels, go to the gameover screen with winning message.

if(global.brickCount == 0)
{
    global.level++;
    audio_play_sound(levelWinSound, 10, false);
    room_restart();
}
if(global.playerLives == 0)
{
    globalvar endMessage;
    endMessage = "GAME OVER";
    room_goto(gameOverRoom);
}
if(global.level > 8)
{
    globalvar endMessage;
    endMessage = "YOU WIN";
    room_goto(gameOverRoom);
}
