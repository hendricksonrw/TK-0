/**********************************
	File: BeltClamp.scad
	Revision: 0.4 (1/5/2013)
	OpenSCAD version by:
	Michael Williams (gannon)
	mswillia@mtu.edu
**********************************/
include <config.scad>
use <functions.scad>
/**********************************
		CONFIGURATION
**********************************/
//Base size
thickness=3.5;
width=28;
height=10;

//Hole configuration
hole_spacing=20;

//Belt configuration
belt_width=8;
belt_depth=1;

/**********************************
		END CONFIGURATION
**********************************/

difference() {

	//Make our base unit
	cube([width,height,thickness]);

	//Drill the holes
	drill(((width-hole_spacing)/2),(height/2),screw_b_diameter/2,thickness+overdrill*2);
	drill(width-((width-hole_spacing)/2),(height/2),screw_b_diameter/2,thickness+overdrill*2);

	//Make the belt cutout
	translate([((width-belt_width)/2),-overdrill,thickness-belt_depth])
		cube([belt_width,height+overdrill*2,belt_depth+overdrill]);

}