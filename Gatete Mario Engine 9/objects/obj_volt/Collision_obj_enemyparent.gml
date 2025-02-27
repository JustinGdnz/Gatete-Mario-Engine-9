/// @description Kill NPC with lightning bolts

//If the enemy is vulnerable
if (other.vulnerable == 0) {
	
	//If the enemy can be hit with projectiles and is vulnerable to them
	if (other.firehp > 0) 
	&& (other.invulnerable == false) {
	
		//With the NPC
		with (other) {
			
			//Play 'Kick' sound
			audio_play_sound(snd_kick, 0, false);
		
			//Decrement projectile hp
			firehp--;
			
			//Become invulnerable for a bit
			invulnerable = true;
			alarm[11] = 4;
		}
	}
	
	//If firehp is equal or lower than 0, perform kill event
	else if (other.firehp <= 0) {
	
		//Play 'Kick' sound
		audio_play_sound(snd_kick, 0, false);
		
		//Kill NPC
		with (other) {
		
			killer_id = other.id;
			event_user(0);
		}
		
		//Get 200 points
		with (instance_create_depth(round(other.bbox_left + other.bbox_right) / 2, bbox_top, -4, obj_score)) 
			value = 200;
	}
}