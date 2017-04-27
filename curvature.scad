
include <measures.scad>;

module pillar()
{
    translate([
        curvature_y/2 - material_z/2 - wall_inset,
        0,
        0
        ])
    cube([
        material_z,
        pillar_width,
        wall_z
        ], center=true);
}

module curvature()
{
    for (i=[0:pillar_count-1])
    {
        rotate([
            0,
            0,
            i*pillar_angle
            ])
        pillar();
    }
}

module curvature_left()
{
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
}

module curvature_right()
{
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

curvature();
