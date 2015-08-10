//Accept arrow key movement, and set boundaries.

if(keyboard_check(vk_left) && x > 8 + sprite_width / 2)
{
    x -= global.paddleSpeed;    
}
else if(keyboard_check(vk_right) && x < (13 * 8) - sprite_width / 2)
{
    x += global.paddleSpeed;
}
