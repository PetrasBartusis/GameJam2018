///scr_camera_movement();
view_xview[0] += ((x - (view_wview[0]/2)) - view_xview[0]) * 0.2;

if(view_xview[0] < 0){
    view_xview[0] = 0;
} else if(view_xview[0] + 1260 > room_width){
    view_xview[0] = room_width - 1260;
}

