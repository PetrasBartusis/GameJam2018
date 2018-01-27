///scr_move_axis

//get a direction
var dir = point_direction(0, 0, xaxis, 0);
//get directional speed
var hspd = lengthdir_x(spd, dir);
//turn the enemy towards the player and check if it's not 0
/*if(hspd != 0){
    image_xscale = sign(hspd);
}*/
//move enemy object
if(speed<=4){ 
    hspeed += hspd/10; 
    if(speed>4){ 
        hspeed -= hspd/10; 
    } 
} 
 
