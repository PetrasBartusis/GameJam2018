///scr_flicker_light
var dif = choose(0.01, - 0.01, 0);
glow_size += dif;
glow_size = clamp(glow_size, 0.95, 1.05);
