physics_fixture_set_box_shape(fix, point_distance(xx1, yy1, xx2, yy2)/2, 0.4);
physics_fixture_set_density(fix, 0);
physics_fixture_set_angular_damping(fix, 0.0);
physics_fixture_set_linear_damping(fix, 0.0);
physics_fixture_set_friction(fix, 0.3);
physics_fixture_set_restitution(fix, 0.3);
physics_fixture_bind(fix, id);
physics_fixture_delete(fix);

phy_rotation = -point_direction(xx1, yy1, xx2, yy2);

