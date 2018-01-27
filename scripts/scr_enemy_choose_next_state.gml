///scr_enemy_choose_next_state
if(alarm[0] <= 0){
    state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
    alarm[0] = room_speed * irandom_range(1, 2);
    if(state == scr_enemy_wander_state){
        xaxis = random_range(-1, 1);
        if(name == "bat"){
            if(shouldFlyUp){
                yaxis = random_range(-0.75, -1);
                shouldFlyUp = false;
            } else {
                yaxis = random_range(-1, 1);
            }
        }
    }
}
