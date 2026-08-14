repeat ((image_speed > 0) ? ceil((room_width / 640) * intensity) : 0)
{
    snow = instance_create_depth(0, 0, -999, obj_snowflake);
}
