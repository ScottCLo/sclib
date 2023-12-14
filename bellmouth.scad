module bellmouth_die(ir,fr,w){
    translate([0,0,w])rotate_extrude(convexity = 10){
        translate([ir+w,0,0])rotate([0,0,180]){
            difference(){
                square(w);
                translate([w-fr,w-fr,0])difference(){
                    square(fr); 
                    circle(fr);
                }
            }
        }
    }
}

module bellmouth_punch(ir,fr,w){
    difference(){
        translate([0,0,-1])cylinder(w+1,w+ir,w+ir);
        translate([0,0,w+1])rotate_extrude(convexity = 10){
            translate([ir+w+1,0,0])rotate([0,0,180]){
                difference(){
                    square(w+1);
                    translate([w+1-fr,w-fr+1,0])difference(){
                        square(fr); 
                        circle(fr);
                    }
                }
            }
        }
    }
}



module bellmouth( ir, r, h, w, t ){
    difference(){
       cylinder(h,w,w);
        if(h>w){
            bellmouth_punch(ir,r,h+1);
            translate([0,0,t])bellmouth_die(ir+t,r+t,h-t+1);
        }else{
            bellmouth_punch(ir,r,w+1);
            translate([0,0,t])bellmouth_die(ir+t,r+t,w-t+1);
        }
    }
}
//bellmouth_punch(8,2,2);
//bellmouth(36,20,30,75,1);
