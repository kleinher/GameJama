/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if(key_scape){
     pause = !pause;
	if(pause)
	{
		id_menu = instance_create_depth(0,0,-1,menu);	
		obj_character.state = scr_pause;
		obj_dementor.state = scr_pause;
	}
	else
	{
		instance_destroy(id_menu);
		obj_character.state = scr_movement;
		obj_enemy.state = scr_movement;
		obj_dementor.state = scr_movement;
	}
}

key_scape = keyboard_check_pressed(vk_escape)


if(!audio_is_playing(snd_musica)){audio_play_sound(snd_musica,5,true);}
