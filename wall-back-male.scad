
include <measures.scad>;
use <wall-front.scad>;
use <wall-anchor.scad>;

module wall_back_male()
{
    // base material
    translate([
        -rect_x/4,
        0,
        0
        ])
    cube([
        rect_x/2,
        material_z,
        wall_z
        ], center=true);

    // noses to top and bottom
    wall_noses_left();

    // anchor
    wall_anchor(anchor_width);
}

wall_back_male();
