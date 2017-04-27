
include <measures.scad>;
use <wall-front.scad>;
use <wall-back-male.scad>;
use <wall-back-female.scad>;

module wall_curved_area()
{
    cube([
        curve_length,
        material_z,
        wall_z
        ], center=true);
}

module wall()
{
    wall_front();

    // flattened curve left
    translate([
        -rect_x/2-curve_length/2,
        0,
        0
        ])
    wall_curved_area();

    // flattened curve right
    translate([
        +rect_x/2+curve_length/2,
        0,
        0
        ])
    wall_curved_area();

    // male anchor end
    translate([
        -rect_x-curve_length,
        0,
        0
        ])
    rotate(180)
    wall_back_male();

    // female anchor end
    translate([
        +rect_x+curve_length,
        0,
        0
        ])
    rotate(180)
    wall_back_female();
}

wall();
