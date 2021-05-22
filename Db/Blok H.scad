$fs=0.1;

BoxH(60,50,30,8);

module BoxH(width,depth,height,dia) {
 hull() {
  translate([dia/2,depth,dia/2]) rotate([90,0,0])cylinder(d=dia,h=depth);
  translate([width-dia/2,depth,dia/2]) rotate([90,0,0])cylinder(d=dia,h=depth);
  translate([width-dia/2,depth,height-dia/2]) rotate([90,0,0])cylinder(d=dia,h=depth);
  translate([dia/2,depth,height-dia/2]) rotate([90,0,0])cylinder(d=dia,h=depth);  
 } 
}

