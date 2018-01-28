///scr_enemy_choose_next_state
if(alarm[0] <= 0){
    if(y > 120 and y < 420 or name = "wolf"){
        state = random_range(1, 100);
        if(random_range(1, 100) < 20){
            state = scr_enemy_wander_state;
        } else {
            state = scr_enemy_idle_state;
        }
    } else {
        state = scr_enemy_wander_state;
    }
    alarm[0] = room_speed * irandom_range(1, 2);
    if(state == scr_enemy_wander_state){
        xaxis = random_range(-1, 1);
        if(name == "bat"){
            if(shouldFlyUp){
                yaxis = random_range(-0.1, -0.25);
                shouldFlyUp = false;
            } else {
                yaxis = random_range(-0.25, 0.25);
            }
        }
    }
}
