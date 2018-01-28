///scr_move_axis
friction=0.5
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
if(name == "wolf"){
    if(speed<=9.2){ 
        hspeed += hspd/10; 
        if(speed>9.2){ 
            hspeed -= hspd/10; 
        }
        if(name == "wolf"){
            sprite_index = spr_enemy;
        }
    }
}
if(name == "bat"){
    maxSpd = 8;
    if(isChasing){
        if(hspd < 0){
            maxSpd = 15;
        } else if(vspd < 0){
            maxSpd = 20; //easy 15 medium 20 hard 30
        }
    } else {
        if(y < 120){
            yaxis = random_range(0.1, 0.25);
        } else if(y > 420){
            yaxis = random_range(-0.1, -0.25);
        }
    }
    if(speed<=maxSpd){ 
        hspeed += hspd/10; 
        if(speed>maxSpd){ 
            hspeed -= hspd/10; 
        }
        vspeed += vspd/10; 
        if(speed>maxSpd){ 
            vspeed -= vspd/10;
        }
    }

    if(y>room_height/2+128){
        y=room_height/2+128;
        vspeed = 0;
        shouldFlyUp = true;
    }
    
}
 
