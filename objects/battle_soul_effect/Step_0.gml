var _speed = 0.3;
x = lerp(x, battle_soul.x, _speed);
y = lerp(y, battle_soul.y, _speed);

image_alpha -= 0.02;
image_xscale += 0.05;
image_yscale += 0.05;

if (image_alpha <= 0){
	instance_destroy();
}
