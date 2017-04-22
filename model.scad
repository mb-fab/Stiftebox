
include <measures.scad>;
use <face-bottom.scad>;
use <face-side.scad>;
use <face-top.scad>;
use <curvature.scad>;

module model()
{
    // bottom
    translate([
        0,
        0,
        material_z/2
        ])
    face_bottom();

    // top
    translate([
        0,
        0,
        box_z - material_z/2
        ])
    face_top();

    // front
    translate([
        0,
        - box_y/2 + material_z/2 + wall_inset,
        wall_z/2 + material_z
        ])
    face_side();

    // back
    translate([
        0,
        + box_y/2 - material_z/2 - wall_inset,
        wall_z/2 + material_z
        ])
    face_side();

    // left curved wall
    translate([
        - rect_x/2,
        0,
        wall_z/2 + material_z
        ])
    rotate([
        0,
        0,
        90
        ])
    curvature();

    // right curved wall
    translate([
        + rect_x/2,
        0,
        wall_z/2 + material_z
        ])
    rotate([
        0,
        0,
        -90
        ])
    curvature();
}

model();
