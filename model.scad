
include <measures.scad>;
use <face-bottom.scad>;
use <face-top.scad>;
use <wall-front.scad>;
use <wall-back-male.scad>;
use <wall-back-female.scad>;

module model()
{
    // bottom
    color("orange")
    translate([
        0,
        0,
        material_z/2
        ])
    face_bottom();

    // top
    color("yellow")
    translate([
        0,
        0,
        box_z - material_z/2
        ])
    face_top();

    // front
    color("cyan")
    translate([
        0,
        - box_y/2 + material_z/2 + wall_inset,
        wall_z/2 + material_z
        ])
    wall_front();

    // back
    color("blue")
    translate([
        0,
        + box_y/2 - material_z/2 - wall_inset + nothing,
        wall_z/2 + material_z
        ])
    wall_back_male();

    color("red")
    translate([
        0,
        + box_y/2 - material_z/2 - wall_inset,
        wall_z/2 + material_z
        ])
    wall_back_female();
}

model();
