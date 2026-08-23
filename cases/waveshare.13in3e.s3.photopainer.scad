// Minimal overrides for Waveshare 13.3"E ePaper case
include <case1.scad>;

// pcb 25.5x75.7 . depth 6.2

/* [View settings] */
view_mode="print_horizontal"; // [print_vertical, print_horizontal, stacked, stacked_case, exploded, only_case, only_thick_border, only_panel_cover]

/* [Case depth] */
panel_cover_depth = 1.8;
panel_depth  = 1.2;
case_depth = 8.0; // change this for your usecase
back_depth = 1.2;
fillet_radius = 2.5; // How round to make the case. Not used with thick borders.

/* [Panel dimensions] */
panel_width  = 285.09;
panel_height = 209.01;

panel_bezel_left   = 3.8;
panel_bezel_right  = 11.8;
panel_bezel_top    = 3.2;
panel_bezel_bottom = 3.2;

/* [Border and inner padding] */
// Add +12 to get thte largest size you can print on a Prusa XL
panel_border_left   = 15.5 + 12;
panel_border_right  =  7.5 + 12;
panel_border_top    = 16.1 + 12;
panel_border_bottom = 16.1 + 12;

case_inner_padding_left = 4;
case_inner_padding_right = 6;
case_inner_padding_top = 4;
case_inner_padding_bottom = 4;

/* [Thick border] */
thick_border = true;
thick_border_width = 12.0;
thick_border_extra_depth = 15.0;

/* [Cable gap] */
panel_cable_gap_right = 142;

/* [Screws] */
screw_offset_left   = 4.6;
screw_offset_right  = 4.6;
screw_offset_top    = 4.6;
screw_offset_bottom = 4.6;

extra_screws_top    = [0.333, 0.667, 0, 0];
extra_screws_bottom = [0.36, 0.64, 0, 0];
extra_screws_left   = [0.333, 0.667, 0, 0, 0];
extra_screws_right  = [0.17, 0.83, 0, 0, 0];

/* [Center support] */
case_center_support_vertical   = false;
case_center_support_horizontal = false;

/* [Kickstand] */
kickstand = false;
kickstand_width = 115;
kickstand_height_percentage = 74;
kickstand_leg_bridge_offset_percentage = 14;
kickstand_hinge_top_extra_leverage = 5;
kickstand_leg_bridge_height = 6.5;
kickstand_depth = 6.7;

/* [USB cutout] */
usb_cutout = true;
usb_cutout_box_depth           = 6.5;
usb_cutout_offset_x_percentage = 50;
usb_cutout_offset_y_percentage = 46.1;
usb_cutout_box_width = 20;
usb_cutout_box_height = 55;
usb_cutout_hole_position = "bottom"; // [top, bottom, left, right, back]
usb_cutout_hole_offset = 0.4;
usb_cutout_hole_height = 3.4;

/* [Hanging hole] */
// [ [top, bottom, left, right], offset_percentage ]
hanging_holes = [
    ["top", 20],
    ["left", 20],
];

/* [SD card adapter cutout] */
sd_card_in_leg = false;
sd_card_in_leg_side = "left"; // [left, right]
sd_card_in_leg_side_side = "left"; // [left, right]
sd_card_in_leg_y_percentage = 82.0;

sd_card_in_usb_cutout = false;
sd_card_in_usb_cutout_side = "right"; // [left, right]
sd_card_in_usb_cutout_y_percentage = 80;

/* [Rear cooling] */
rear_cooling = true;
rear_cooling_x_start_percentage = 48;
rear_cooling_x_end_percentage = 52;
rear_cooling_y_start_percentage = 79;
rear_cooling_y_end_percentage = 86.8;

/* [Raspberry Pi Zero Pinholes] */
pi_pinholes = false;
pi_pinholes_orientation = "horizontal"; // [horizontal, vertical]
pi_pinholes_x_percentage = 50;
pi_pinholes_y_percentage = 85;


/* [Extra Pin Mounts] */
extra_pin_mounts_enabled = true;
extra_pin_mounts_anchor = "percentage"; // [center, percentage, top-left, top, top-right, left, right, bottom-left, bottom, bottom-right]
extra_pin_mounts_anchor_percentage = [50, 73]; // Used when anchor is "percentage".
extra_pin_mounts_hole_diameter = 1.9;
// Each mount is [x_offset, y_offset, pin_diameter, spacer_diameter, spacer_height, pin_enabled].
// Use [x_offset, y_offset] to keep the Raspberry Pi pin defaults, or undef for any optional value.

extra_pin_mounts = [
    [-21.7/2, -71.9/2, undef, undef, undef, false],
    [+21.7/2, -71.9/2, undef, undef, undef, false],
    [-21.7/2, +71.9/2, undef, undef, undef, false],
    [+21.7/2, +71.9/2, undef, undef, undef, false]
];

/* [Hidden] */
extra_pinholes = false;
extra_pinholes_anchor = "center"; // [center, percentage, top-left, top, top-right, left, right, bottom-left, bottom, bottom-right]
extra_pinholes_anchor_percentage = [50, 15]; // Used when anchor is "percentage".
extra_pinholes_offsets = [
    [0, 0]
];

/* [Backplate Access Holes] */
backplate_access_holes = true;
backplate_access_holes_diameter = 2;
backplate_access_holes_anchor = "percentage"; // [center, percentage, top-left, top, top-right, left, right, bottom-left, bottom, bottom-right]
backplate_access_holes_anchor_percentage = [50, 73]; // Used when anchor is "percentage".
backplate_access_holes_offsets = [
    [-21.7/2+4.2, -71.9/2+1.1],
    [+21.7/2-4.2, -71.9/2+1.1],
];

sd_cutout = true;
sd_cutout_offset_x_percentage = 42.3;
sd_cutout_offset_y_percentage = 76.4;
sd_cutout_box_width = 20;
sd_cutout_box_height = 13;
sd_cutout_box_depth = 5.2;
sd_cutout_left_wall_thickness = 1.4;
sd_cutout_right_wall_thickness = 0;
sd_cutout_bottom_wall_thickness = 1.4;
sd_cutout_top_wall_thickness = 1.4;
sd_cutout_back_wall_thickness = 1.2;
sd_cutout_hole_offset = -0.5;
sd_cutout_hole_position = "right"; // [top, bottom, left, right, back]
sd_cutout_hole_width = 12;
sd_cutout_hole_height = 6.0;

hole_cutout = true;
hole_cutout_offset_x_percentage = 48.3;
hole_cutout_offset_y_percentage = 76.1;
hole_cutout_box_width = 18;
hole_cutout_box_height = 13;
hole_cutout_box_depth = 2;

/* [Side buttons] */
 // array of values 0.0 to 1.0
side_buttons_left = [];
side_buttons_right = [];
side_buttons_top = [];
side_buttons_bottom = [];

/* [Debug] */
cross_section_percentage = 0; // [0:100]
vertical_print_scale = 1.004; // 0.4mm shrinkage for every 100mm
kickstand_rotation = 0;
