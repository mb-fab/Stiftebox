/**
 * Pencil box configuration
 * All measures in millimeters
 */

// rendering parameters
$fn = 200;
nothing = 0.005;

// material to cut from
material_x = 350;
material_y = 180;
material_z = 3;

// total size of the box
box_x = 130;
box_y = 70;
box_z = 100;

// measures of the two half circles left and right
curvature_y = box_y;
curvature_x = curvature_y/2;

// measure of rectangle between half circles
rect_x = box_x - 2*curvature_x;
rect_y = box_y;

top_opening_inset = 5.7*material_z;

wall_z = box_z - 2*material_z;

// distance between wall and outer edge
wall_inset = material_z;

curve_radius = box_y/2 - wall_inset - material_z;
curve_length = curve_radius*PI;

// total wall length without anchor
wall_length = 2*rect_x + 2*curve_length;

// nose properties
nose_x = 2*material_z;
nose_z = material_z;

// anchor
anchor_width = 10;
anchor_height = 30;
anchor_length = 20;

// for preview
pillar_count = 20;
pillar_angle = 180 / (pillar_count-1);
pillar_width = 4;

part_spacing = 1;