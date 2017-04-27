
include <measures.scad>;
use <wall-front.scad>;
use <wall-anchor.scad>;

module wall_nose()
{
    cube([
        nose_width,
        material_z,
        material_z
        ], center=true);
}

module wall_back_female()
{
    difference()
    {
        // base material
        translate([
            +rect_x/4,
            0,
            0
            ])
        cube([
            rect_x/2,
            material_z,
            wall_z
            ], center=true);

        wall_anchor();
    }

    // noses to top and bottom
    wall_noses_right();
}

wall_back_female();
