// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyMovement(){
	move_X = runSpeed;
	move_X = move_X * enemyDirection; 
	x += move_X;
	y += move_Y;
	scr_gravity();
	scr_colitionSystem();
	
	if(canJump > 0 ){ 

		canJump--;
		move_Y = jSpeed*-1;
	}
	if(!audio_is_playing(snd_elastic)){audio_play_sound(snd_elastic,1,false);}
}