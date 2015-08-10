//If the user clicks my logo (which is part of the background, but covered with
//an invisible "clickableUrlObject", open my blog in a new tab.

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,clickableUrlObject))
{
    url_open_ext("http://www.imakeretrogames.com", "_blank");
}
