x1 = x;
y1 = y;
x2 = x+100;
y2 = y;
x3 = x+100;
y3 = y+100;
x4 = x;
y4 = y+100;

cam_initx = camera_get_view_x(control_camera.cam);
cam_inity = camera_get_view_y(control_camera.cam);

show_debug_message("camx="+string(cam_initx)+" camy="+string(cam_inity));

depth = -y*10;

//height = random_range(0.5, 2);
height = 2;