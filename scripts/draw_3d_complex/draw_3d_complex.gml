//uses variables from the calling object
//adds the calling object's sprite image indices to the draw queue that's iterated on by master_draw

var spacing = argument0;

layer_count = sprite_get_number(sprite_index);

var i = 0;
while (i < layer_count) {
	draw_request(id, i, spacing, false, true);
	i += 1;
}