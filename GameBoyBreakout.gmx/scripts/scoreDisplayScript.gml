//Set the font and print the HUD. If the player's score is higher than the top score,
//update the top score.

fontColor = make_color_rgb(15,56,15);

if(global.playerScore > global.topScore)
{
    global.topScore = global.playerScore;
}

draw_set_font(scoreFont);
draw_set_color(fontColor);
draw_text(room_width * .75, room_height*.1, "Top:");
draw_text(room_width * .75, room_height*.3, "Score:");
draw_text(room_width * .75, room_height*.5, "Level:");
draw_text(room_width * .75, room_height*.7, "Lives:");

draw_text(room_width * .75, room_height*.2, global.topScore);
draw_text(room_width * .75, room_height*.4, global.playerScore);
draw_text(room_width * .75, room_height*.6, global.level);
draw_text(room_width * .75, room_height*.8, global.playerLives);
