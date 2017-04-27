
include <measures.scad>;
use <face-top.scad>;
use <face-bottom.scad>;
use <wall.scad>;

module material()
{
    color("brown")
    translate([
        0,
        0,
        -material_z
        ])
    cube([
        material_x,
        material_y,
        material_z
        ]);
}

module part_wall()
{
    rotate([
        90,
        0,
        0
        ])
    wall();
}

module parts()
{
    translate([
        +box_x*3/2 + part_spacing,
        wall_z+2*material_z+box_y/2+part_spacing,
        0
        ])
    face_top();

    translate([
        +box_x/2,
        wall_z+2*material_z+box_y/2+part_spacing,
        0
        ])
    face_bottom();

    translate([
        wall_length/2+anchor_length+part_spacing,
        wall_z/2+material_z,
        0
        ])
    part_wall();
}

material();
parts();
