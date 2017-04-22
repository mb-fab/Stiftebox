
include <measures.scad>;

module round_corner()
{
    difference()
    {
        // full cylinder
        cylinder(
            r = curvature_diameter/2,
            h = material_z,
            center = true
            );

        // subtract nearer half
        translate([
            0,
            -curvature_diameter/2,
            0
            ])
        cube([
            curvature_diameter*1.2,
            curvature_diameter,
            material_z*1.2
            ], center=true);
    }
}

module face_bottom()
{
    // rectangle in the middle
    cube([
        rect_x,
        rect_y,
        material_z
        ], center=true);

    // left round corner
    translate([
        -rect_x/2 +nothing,
        0,
        0
        ])
    rotate([
        0,
        0,
        90
        ])
    round_corner();

    // right round corner
    translate([
        +rect_x/2 -nothing,
        0,
        0
        ])
    rotate([
        0,
        0,
        -90
        ])
    round_corner();
}

face_bottom();
