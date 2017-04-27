
include <measures.scad>;
use <face-bottom.scad>;

module face_top()
{
    difference()
    {
        face_bottom();

        // opening hole
        scale([
            1 - top_opening_inset/box_x,
            1 - top_opening_inset/box_y,
            1.2
            ])
        face_bottom_without_holes();
    }
}

face_top();
