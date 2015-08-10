//This sets up variables which will be used throughout the game, starts the 
//background music and jumps to the splash screen room.

globalvar level;
global.level = 1;
globalvar ballSpeed;
global.ballSpeed = 3;
globalvar paddleSpeed;
global.paddleSpeed = 8;
globalvar playerScore;
global.playerScore = 0;
globalvar topScore;
global.topScore = 0;
globalvar playerLives;
global.playerLives = 3;
globalvar brickCount;
global.brickCount = 90;

audio_play_sound(bgMusicSound, 10, true);

room_goto(splashScreenRoom);
