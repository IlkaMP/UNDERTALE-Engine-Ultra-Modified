for (i = 0; i < (room_height / 3); i++)
{
    repeat (ceil((room_width / 640) * intensity))
    {
        snow = instance_create_depth(0, (i * 3) + 1, -999, obj_snowflake);
        snow.image_alpha = 0.8;
    }
}
