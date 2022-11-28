var fix = physics_fixture_create();
physics_fixture_set_box_shape(fix, (image_xscale*150)/2, (image_yscale*22)/2);
physics_fixture_set_density(fix, 0);
physics_fixture_set_restitution(fix, 0);
physics_fixture_set_friction(fix, 0.6);

physics_fixture_bind(fix, id);
physics_fixture_delete(fix);

//phy_rotation = image_angle;

