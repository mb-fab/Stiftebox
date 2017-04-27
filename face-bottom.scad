
include <measures.scad>;

module round_corner()
{
    difference()
    {
        // full cylinder
        cylinder(
            r = curvature_y/2,
            h = material_z,
            center = true
            );

        // subtract nearer half
        translate([
            0,
            -curvature_y/2,
            0
            ])
        cube([
            curvature_x*1.2,
            curvature_x,
            material_z*1.2
            ], center=true);
    }
}

module face_bottom_without_holes()
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

module face_bottom()
{
    difference()
    {
        face_bottom_without_holes();

        // noses
        for (x=[
            -rect_x/2+nose_x/2,
            +rect_x/2-nose_x/2
            ])
        {
            for (y=[
                -rect_y/2+wall_inset+material_z/2,
                +rect_y/2-wall_inset-material_z/2
                ])
            {
                translate([
                    x,
                    y,
                    0
                    ])
                cube([
                    nose_x,
                    material_z,
                    material_z*1.2
                    ], center=true);
            }
        }
    }
}

face_bottom();
