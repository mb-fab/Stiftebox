
include <measures.scad>;
use <face-bottom.scad>;

module face_top()
{
    difference()
    {
        face_bottom();

        scale([
            1 - hole_inset/box_x,
            1 - hole_inset/box_y,
            1.2
            ])
        face_bottom();
    }
}

face_top();
