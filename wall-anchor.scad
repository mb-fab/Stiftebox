/**
 * The anchor is the structure
 * on the back side of the box
 * which holds together the
 * two ends of the wall.
 */

include <measures.scad>;

module wall_anchor()
{
    // horizontal
    translate([
        anchor_length/2-nothing,
        0,
        0
        ])
    cube([
        anchor_length+nothing,
        material_z+nothing,
        anchor_width
        ], center=true);

    // vertical
    translate([
        +anchor_length-anchor_width/2,
        0,
        0
        ])
    cube([
        anchor_width,
        material_z+nothing,
        anchor_height
        ], center=true);
}

wall_anchor();
