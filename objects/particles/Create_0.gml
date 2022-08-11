/// @description Insert description here
// You can write your code in this editor



pg_system = part_system_create_layer("particles_ground", 0)
p_system = part_system_create_layer("particles",0)


blood = part_type_create()

part_type_shape(blood, pt_shape_pixel)
part_type_color_rgb(blood,80,140,0,0,0,0)
part_type_size(blood,1,1,0,0)
part_type_direction(blood,0,360,2,10)
part_type_speed(blood,0.4,0.8,-0.1,0)
part_type_life(blood,60*room_speed,120*room_speed)



steps = part_type_create()

part_type_shape(steps, pt_shape_pixel)
part_type_color_rgb(steps,90,110,80,100,110,120)
part_type_size(steps,1,1,0,0)
part_type_direction(steps,90,180,2,10)
part_type_speed(steps,0.5,1,-0.1,0)
part_type_life(steps,60*room_speed,120*room_speed)


//window_set_fullscreen(true)


mage_aura = part_type_create()

part_type_shape(mage_aura, pt_shape_pixel)
part_type_color_rgb(mage_aura,70,130,0,0,20,30)
part_type_alpha2(mage_aura, 0.7, 0.2)
part_type_size(mage_aura,1,1,0,0)
part_type_direction(mage_aura,70,110,0,3)
part_type_speed(mage_aura,0.05,0.1,0,0)
part_type_life(mage_aura,0.5*room_speed,1.4*room_speed)


//window_set_fullscreen(true)

slime = part_type_create()

part_type_shape(slime, pt_shape_pixel)
part_type_color_rgb(slime,170,190,205,220,210,240)
part_type_alpha2(slime, 0.7, 0.1)
part_type_size(slime,1,3,0,0)
part_type_direction(slime,0,360,0,5)
part_type_speed(slime,0.0,0,0,0)
part_type_life(slime,4*room_speed,10*room_speed)


//window_set_fullscreen(true)

dust1 = part_type_create()

part_type_shape(dust1, pt_shape_pixel)
part_type_color_rgb(dust1,120,130,90,100,60,70)
part_type_alpha2(dust1, 1, 1)
part_type_size(dust1,1,1,0,0)
part_type_direction(dust1,30,150,0,5)
part_type_speed(dust1,0.4,1,0,0)
part_type_life(dust1,0.4*room_speed,0.6*room_speed)
part_type_gravity(dust1, 0.045, 270)


//window_set_fullscreen(true)

click = part_type_create()

part_type_shape(click, pt_shape_pixel)
part_type_color_rgb(click,120,130,90,100,60,70)
part_type_alpha2(click, 1, 1)
part_type_size(click,1,1,0,0)
part_type_direction(click,30,150,0,5)
part_type_speed(click,0.4,1,0,0)
part_type_life(click,0.2*room_speed,0.3*room_speed)
part_type_gravity(click, 0.085, 270)


mage_shoot = part_type_create()

part_type_shape(mage_shoot, pt_shape_pixel)
part_type_color_rgb(mage_shoot,70,255,0,80,0,50)
part_type_alpha2(mage_shoot, 0.8, 0.3)
part_type_size(mage_shoot,1,1,0,0)
part_type_direction(mage_shoot,70,110,0,3)
part_type_speed(mage_shoot,0.3,0.4,0,0)
part_type_life(mage_shoot,1*room_speed,1.5*room_speed)

catapult_land = part_type_create()

part_type_shape(catapult_land, pt_shape_pixel)
var col = irandom_range(120, 220)
part_type_color_rgb(catapult_land,col,col,col,col,col,col)
part_type_alpha2(catapult_land, 1, 1)
part_type_size(catapult_land,1,1,0,0)
part_type_direction(catapult_land,0,360,0,0)
part_type_speed(catapult_land,0.1,0.3,0,0)
part_type_life(catapult_land,0.333*room_speed,0.333*room_speed)