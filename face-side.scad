
include <measures.scad>;

module face_side()
{
    cube([
        rect_x,
        material_z,
        wall_z
        ], center=true);
}

face_side();
