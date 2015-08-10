//Print the endgame message in a font the GB can render.

fontColor = make_color_rgb(15,56,15);
draw_set_font(gameOverFont);
draw_set_color(fontColor);
draw_set_halign(fa_center);
draw_text(room_width / 2, (room_height / 2)*.4, global.endMessage);
draw_set_font(scoreFont);
draw_text(room_width / 2, (room_height / 2), "Press enter to play again.");
