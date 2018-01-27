///scr_enemy_idle_state
if speed >0 speed-=1;
scr_check_for_player();
if(name == "wolf"){
    sprite_index = spr_enemy_idle;
}
