
include <measures.scad>;

module wall_noses(x)
{
    for (z=[
        -wall_z/2-nose_z/2,
        +wall_z/2+nose_z/2
        ])
    {
        translate([
            x,
            0,
            z
            ])
        cube([
            nose_x,
            material_z,
            nose_z
            ], center=true);
    }
}

module wall_noses_left()
{
    wall_noses(-rect_x/2+nose_x/2);
}

module wall_noses_right()
{
    wall_noses(+rect_x/2-nose_x/2);
}

module wall_front()
{
    // base material
    cube([
        rect_x,
        material_z,
        wall_z
        ], center=true);

    // noses to top and bottom
    wall_noses_left();
    wall_noses_right();
}

wall_front();
