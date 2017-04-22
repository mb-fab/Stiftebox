/**
 * Pencil box configuration
 * All measures in millimeters
 */

$fn = 200;

material_z = 3;

box_x = 130;
box_y = 70;
box_z = 100;

curvature_diameter = box_y;
curvature_width = 20;

rect_x = box_x - curvature_width;
rect_y = box_y;

wall_z = box_z - 2*material_z;
wall_inset = material_z;

hole_inset = 4*material_z;

nothing = 0.005;

pillar_count = 20;
pillar_angle = 180 / (pillar_count-1);
pillar_width = 4;
