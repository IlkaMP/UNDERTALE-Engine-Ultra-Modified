// Inherit the parent event
event_inherited();

if (sine_growth || cos_growth) {
    growth_time += growth_speed;

    if (sine_growth) {
        length = base_length + growth_amplitude * sin(growth_time + growth_offset);
    } else {
        length = base_length + growth_amplitude * cos(growth_time + growth_offset);
    }

    if (length < 1) length = 1;
}