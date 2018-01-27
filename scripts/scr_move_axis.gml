///scr_move_axis

//get a direction
var dir = point_direction(0, 0, xaxis, yaxis);
//get directional speed
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
//turn the enemy towards the player and check if it's not 0
if(hspd != 0){
    image_xscale = sign(hspd);
}
//move enemy object
if(speed<=4){ 
    hspeed += hspd/10; 
    if(speed>4){ 
        hspeed -= hspd/10; 
    }
    if(name == "wolf"){
        sprite_index = spr_enemy;
    }
}
if(name == "bat"){
    if(speed<=4){ 
        vspeed += vspd/10; 
        if(speed>4){ 
            vspeed -= vspd/10;
        } 
    }
    if(y>room_height/2+127){
        y=room_height/2+128;
        vspeed = 0;
        shouldFlyUp = true;
    }
}
 
