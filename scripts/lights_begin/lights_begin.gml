if (event_type == ev_draw) && (event_number == 0) {
	if (!surface_exists(global.light_surface)) {
		global.light_surface =  surface_create(1024, 1024);
	}
	
	var cam = master_camera.cam;
	
	surface_set_target(global.light_surface);
	
	//camera_apply(cam);
	
	
	draw_clear_alpha(c_black, 1);
	gpu_set_blendmode(bm_add);
}
