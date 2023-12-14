module right_angle_pipe(start_r = 10, end_r = 10, x = 5, y = -20, z = 20) {
    deg = 90;
    res = 5;
    r_step = (end_r - start_r)/90;
    x_step = (-x/deg);
    b = -(-y - start_r + z + start_r-(end_r-start_r))/2;
    a = -b - start_r + y ;
    sr = 1;
    //translate([x,-y,z])sphere(end_r-1);
    rotate([0,0,180])translate([0,-a-start_r,-b])union()for (i = [0:res:deg-1]){
        r1 = start_r + r_step * i;
        r2 = start_r + r_step * (i+res);
        hull(){
            rotate([i,0,0])translate([x_step*i, r1+a,b])cylinder(0.1,r1);
            rotate([i+res,0,0])translate([x_step*(i+res), r2+a,b])cylinder(0.1,r2);
        }
    }
}