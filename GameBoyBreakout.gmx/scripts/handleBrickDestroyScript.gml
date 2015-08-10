//Decrement the brick count. Play the bricck destruction sound.

global.brickCount--;
audio_play_sound(breakBrickSound, 10, false);
