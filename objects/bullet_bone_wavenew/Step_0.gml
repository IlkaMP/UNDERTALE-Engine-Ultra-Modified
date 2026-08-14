if WaveType == DIR.RIGHT and deleteafter == false{
	bone_timer -= 1;
    if wave_time < TimeToEnd{
    if (bone_timer <= 0)
    {
        bonx = battle_board.x + battle_board.right;
        bony = wave_offset + (wave_amplitude * sin(wave_time * wave_frequency));
        Battle_MakeBone(bonx, bony - DistanceB, 120, -speedwalls, 0, BoneType, 0, 90, 0);
        bonx += 10;
        bone_timer = 4;
    }
	}
    wave_time += 1;
    bone_timer2 -= 1;
    if wave_time2 < TimeToEnd{
    if (bone_timer2 <= 0)
    {
        bonx2 = battle_board.x + battle_board.right;
        bony2 = wave_offset2 + (wave_amplitude2 * sin(wave_time2 * wave_frequency2));
        Battle_MakeBone(bonx2, bony2 + DistanceB, 120, -speedwalls, 0, BoneType, 0, 90, 0);
        bonx2 += 10;
        bone_timer2 = 4;
    }
	}
    wave_time2 += 1;
}

if WaveType == DIR.RIGHT and deleteafter == true{
	bone_timer -= 1;
    if wave_time < TimeToEnd{
    if (bone_timer <= 0)
    {
        bonx = battle_board.x + battle_board.right;
        bony = wave_offset + (wave_amplitude * sin(wave_time * wave_frequency));
        up = Battle_MakeBone(bonx, bony - DistanceB, 120, -speedwalls, 0, BoneType, 0, 90, 0);
		ds_list_add(bones, up)
        bonx += 10;
        bone_timer = 4;
    }
	}
    wave_time += 1;
    bone_timer2 -= 1;
    if wave_time2 < TimeToEnd{
    if (bone_timer2 <= 0)
    {
        bonx2 = battle_board.x + battle_board.right;
        bony2 = wave_offset2 + (wave_amplitude2 * sin(wave_time2 * wave_frequency2));
        down = Battle_MakeBone(bonx2, bony2 + DistanceB, 120, -speedwalls, 0, BoneType, 0, 90, 0);
		ds_list_add(bones, down)
        bonx2 += 10;
        bone_timer2 = 4;
    }
	}
		for (var i = ds_list_size(bones) - 1; i >= 0; i--)
{
    var obj = ds_list_find_value(bones, i);
    
    if (instance_exists(obj))
    {
        if (obj.x < battle_board.x - battle_board.left - 5)
        {
            instance_destroy(obj);
            ds_list_delete(bones, i);
        }
    }
    else
    {
        ds_list_delete(bones, i);
    }
}

    wave_time2 += 1;
}

if WaveType == DIR.LEFT and deleteafter == false{
	bone_timer -= 1;
    if wave_time < TimeToEnd{
    if (bone_timer <= 0)
    {
        bonx = battle_board.x - battle_board.left;
        bony = wave_offset + (wave_amplitude * sin(wave_time * wave_frequency));
        Battle_MakeBone(bonx, bony - DistanceB, 120, speedwalls, 0, BoneType, 0, 90, 0);
        bonx += 10;
        bone_timer = 4;
    }
	}
    wave_time += 1;
    bone_timer2 -= 1;
    if wave_time2 < TimeToEnd{
    if (bone_timer2 <= 0)
    {
        bonx2 = battle_board.x - battle_board.left;
        bony2 = wave_offset2 + (wave_amplitude2 * sin(wave_time2 * wave_frequency2));
        Battle_MakeBone(bonx2, bony2 + DistanceB, 120, speedwalls, 0, BoneType, 0, 90, 0);
        bonx2 += 10;
        bone_timer2 = 4;
    }
	}
    wave_time2 += 1;
}
if WaveType == DIR.LEFT and deleteafter == true{
	bone_timer -= 1;
    if wave_time < TimeToEnd{
    if (bone_timer <= 0)
    {
        bonx = battle_board.x - battle_board.left;
        bony = wave_offset + (wave_amplitude * sin(wave_time * wave_frequency));
        up = Battle_MakeBone(bonx, bony - DistanceB, 120, speedwalls, 0, BoneType, 0, 90, 0);
		ds_list_add(bones, up)
        bonx += 10;
        bone_timer = 4;
    }
	}
    wave_time += 1;
    bone_timer2 -= 1;
    if wave_time2 < TimeToEnd{
    if (bone_timer2 <= 0)
    {
        bonx2 = battle_board.x - battle_board.left;
        bony2 = wave_offset2 + (wave_amplitude2 * sin(wave_time2 * wave_frequency2));
        down = Battle_MakeBone(bonx2, bony2 + DistanceB, 120, speedwalls, 0, BoneType, 0, 90, 0);
		ds_list_add(bones, down)
        bonx2 += 10;
        bone_timer2 = 4;
    }
	}
		for (var i = ds_list_size(bones) - 1; i >= 0; i--)
{
    var obj = ds_list_find_value(bones, i);
    
    if (instance_exists(obj))
    {
        if (obj.x > battle_board.x + battle_board.right + 5)
        {
            instance_destroy(obj);
            ds_list_delete(bones, i);
        }
    }
    else
    {
        ds_list_delete(bones, i);
    }
}

    wave_time2 += 1;
}
if WaveType == DIR.UP and deleteafter == false{
	bone_timer3 -= 1;
    if wave_time3 < TimeToEnd{
    if (bone_timer3 <= 0)
    {
        by3 = battle_board.y - battle_board.up;
        bx3 = wave_offset3 + (wave_amplitude3 * sin(wave_time3 * wave_frequency3));
        Battle_MakeBone(bx3 - DistanceB, by3, 120, 0, speedwalls, 0, 0, 0, 0);
        bx3 += 10;
        bone_timer3 = 4;
    }
	}
    wave_time3 += 1;
    bone_timer4 -= 1;
    if wave_time4 < TimeToEnd{
    if (bone_timer4 <= 0)
    {
        by4 = battle_board.y - battle_board.up;
        bx4 = wave_offset4 + (wave_amplitude4 * sin(wave_time4 * wave_frequency4));
        Battle_MakeBone(bx4 + DistanceB, by4, 120, 0, speedwalls, 0, 0, 0, 0);
        bx4 += 10;
        bone_timer4 = 4;
	}
    wave_time4 += 1;
    }
	}
if WaveType == DIR.UP and deleteafter == true{
	bone_timer3 -= 1;
    if wave_time3 < TimeToEnd{
    if (bone_timer3 <= 0)
    {
        by3 = battle_board.y - battle_board.up;
        bx3 = wave_offset3 + (wave_amplitude3 * sin(wave_time3 * wave_frequency3));
        up = Battle_MakeBone(bx3 - DistanceB, by3, 120, 0, speedwalls, 0, 0, 0, 0);
		ds_list_add(bones, up)
        bx3 += 10;
        bone_timer3 = 4;
    }
	}
    wave_time3 += 1;
    bone_timer4 -= 1;
    if wave_time4 < TimeToEnd{
    if (bone_timer4 <= 0)
    {
        by4 = battle_board.y - battle_board.up;
        bx4 = wave_offset4 + (wave_amplitude4 * sin(wave_time4 * wave_frequency4));
        down = Battle_MakeBone(bx4 + DistanceB, by4, 120, 0, speedwalls, 0, 0, 0, 0);
		ds_list_add(bones, down)
        bx4 += 10;
        bone_timer4 = 4;
    }
	}
		for (var i = ds_list_size(bones) - 1; i >= 0; i--)
{
    var obj = ds_list_find_value(bones, i);
    
    if (instance_exists(obj))
    {
        if (obj.y > battle_board.y + battle_board.down + 5)
        {
            instance_destroy(obj);
            ds_list_delete(bones, i);
        }
    }
    else
    {
        ds_list_delete(bones, i);
    }
}

    wave_time4 += 1;
}
if WaveType == DIR.DOWN and deleteafter == false{
	bone_timer3 -= 1;
    if wave_time3 < TimeToEnd{
    if (bone_timer3 <= 0)
    {
        by3 = battle_board.y + battle_board.down;
        bx3 = wave_offset3 + (wave_amplitude3 * sin(wave_time3 * wave_frequency3));
        Battle_MakeBone(bx3 - DistanceB, by3, 120, 0, -speedwalls, 0, 0, 0, 0);
        bx3 += 10;
        bone_timer3 = 4;
    }
	}
    wave_time3 += 1;
    bone_timer4 -= 1;
    if wave_time4 < TimeToEnd{
    if (bone_timer4 <= 0)
    {
        by4 = battle_board.y + battle_board.down;
        bx4 = wave_offset4 + (wave_amplitude4 * sin(wave_time4 * wave_frequency4));
        Battle_MakeBone(bx4 + DistanceB, by4, 120, 0, -speedwalls, 0, 0, 0, 0);
        bx4 += 10;
        bone_timer4 = 4;
	}
    wave_time4 += 1;
    }
	}
if WaveType == DIR.DOWN and deleteafter == true{
	bone_timer3 -= 1;
    if wave_time3 < TimeToEnd{
    if (bone_timer3 <= 0)
    {
        by3 = battle_board.y + battle_board.down;
        bx3 = wave_offset3 + (wave_amplitude3 * sin(wave_time3 * wave_frequency3));
        up = Battle_MakeBone(bx3 - DistanceB, by3, 120, 0, -speedwalls, 0, 0, 0, 0);
		ds_list_add(bones, up)
        bx3 += 10;
        bone_timer3 = 4;
    }
	}
    wave_time3 += 1;
    bone_timer4 -= 1;
    if wave_time4 < TimeToEnd{
    if (bone_timer4 <= 0)
    {
        by4 = battle_board.y + battle_board.down;
        bx4 = wave_offset4 + (wave_amplitude4 * sin(wave_time4 * wave_frequency4));
        down = Battle_MakeBone(bx4 + DistanceB, by4, 120, 0, -speedwalls, 0, 0, 0, 0);
		ds_list_add(bones, down)
        bx4 += 10;
        bone_timer4 = 4;
    }
	}
		for (var i = ds_list_size(bones) - 1; i >= 0; i--)
{
    var obj = ds_list_find_value(bones, i);
    
    if (instance_exists(obj))
    {
        if (obj.y < battle_board.y - battle_board.up - 5)
        {
            instance_destroy(obj);
            ds_list_delete(bones, i);
        }
    }
    else
    {
        ds_list_delete(bones, i);
    }
}

    wave_time4 += 1;
}