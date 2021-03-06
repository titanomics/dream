radius += bloom;

//these vals are for assuring the light surface gets drawn right in the center of the camera's focus to fully encompass the screen even when the view is rotated
if (surface_offset_x == -1 || surface_offset_y == -1) {
	surface_offset_x = (global.view_diameter - global.game_width)/2;
	surface_offset_y = (global.view_diameter - global.game_height)/2;
}

light_surface_x = global.cam_x - surface_offset_x;
light_surface_y = global.cam_y - surface_offset_y;

gpu_set_blendmode(bm_subtract);
surface_set_target(global.light_surface);
draw_ellipse_color(x - radius - light_surface_x, y - radius - light_surface_y, x + radius - light_surface_x, y + radius - light_surface_y, c_orange, c_black, false);
surface_reset_target();
gpu_set_blendmode(bm_normal);





/*
// light testing code

//radius of light source
light_radius = 164;

if (distance_to_point(mouse_x, mouse_y) < light_radius) {
	
	//wall boundary points
	x1 = x-bwx/2;
	y1 = y-bwy/2;
	x2 = x-bwx/2;
	y2 = y+bwy/2;
	x3 = x+bwx/2;
	y3 = y+bwy/2;
	x4 = x+bwx/2;
	y4 = y-bwy/2;
	
	dirc = point_direction(mouse_x, mouse_y, x1, y1); //direction from mouse to edge of the wall
	
	//shadow vertices
	x11 = x1 + lengthdir_x(200, dirc); //length of shadow is set to 200 here
	y11 = y1 + lengthdir_y(200, dirc);
	
	x21 = x2 + lengthdir_x(200, dirc);
	y21 = y2 + lengthdir_y(200, dirc);
	
	x31 = x3 + lengthdir_x(200, dirc);
	y31 = y3 + lengthdir_y(200, dirc);
	
	x41 = x4 + lengthdir_x(200, dirc);
	y41 = y4 + lengthdir_y(200, dirc);
	
}

	//gpu_set_blendmode(bm_add);
	surface_set_target(global.light_surface);
	//draw shadow
	draw_set_alpha(1);
	//gpu_set_blendmode(bm_subtract);
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex(x1,y1);
	draw_vertex(x11,y11);
	draw_vertex(x2,y2);
	draw_vertex(x21,y21);
	draw_vertex(x3,y3);
	draw_vertex(x31,y31);
	draw_vertex(x4,y4);
	draw_vertex(x41,y41);
	draw_vertex(x1,y1);
	draw_vertex(x11,y11);
	draw_primitive_end();
	surface_reset_target();
	//gpu_set_blendmode(bm_normal);