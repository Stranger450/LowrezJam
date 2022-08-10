/// @description Shoots at the enemy

instance_create_layer(x+2, y+2, "projectiles", projectile, {goal : attack_choice, p_dmg: dmg})

