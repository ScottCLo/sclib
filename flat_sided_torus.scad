module flat_sided_torus(radius, length, toroid_radius) {
	union(){
		translate([-length/2,radius,0])stright(toroid_radius, length);
		rotate([0,0,180]) translate([-length/2,radius,0])stright(toroid_radius, length);
		translate([length/2,0,0]) curve(toroid_radius, radius);
		rotate([0,0,180]) translate([length/2,0,0]) curve(toroid_radius, radius);
	
	}
}
module stright(r, l){
	rotate([0,90,0])linear_extrude(height = l)circle(r); 
}
module curve(r, r1) {
	rotate([0,0,-90])rotate_extrude(angle =180, convexity=10)translate([r1,0,0])circle(r);
}
