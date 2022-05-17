/// @description Create the enemy depending of the sprite.

switch (sprite_index) {

    //Cheep Cheep
    case (spr_cheepcheep): {
    
        instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 64, y, -2, obj_cheepcheep);
    } break;
	
	//Boss Bass
	case (spr_bossbass): {
	
		instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 64, y, -2, obj_bossbass);
	} break;
	
	//Porcu Puffer
	case (spr_porcupuffer): {
	
		with (instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 64, y, -2, obj_porcupuffer))		
			charge = 1;
	} break;
	
	//Lakitu
	case (spr_lakitu): {
	
		with (instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 64, y, -2, obj_lakitu)) {
			
			xmin = other.xmin;
			xmax = other.xmax;
		}
	} break;
	
	//Red Lakitu
	case (spr_lakitu_red): {
	
		with (instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 64, y, -2, obj_lakitu_red)) {
			
			xmin = other.xmin;
			xmax = other.xmax;
		}
	} break;
}

//Destroy
instance_destroy();
