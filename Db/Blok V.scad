$fs=0.1;

BoxV(80,50,30,10);

module BoxV(width,depth,height,dia) {
 hull() {
  translate([dia/2,dia/2,0])cylinder(d=dia,h=height);
  translate([width-dia/2,dia/2,0])cylinder(d=dia,h=height);
  translate([width-dia/2,depth-dia/2,0])cylinder(d=dia,h=height);
  translate([dia/2,depth-dia/2,0])cylinder(d=dia,h=height);
 } 
}