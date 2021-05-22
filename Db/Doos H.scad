$fs=0.1;

DoosH(60,50,30,8,2);

module DoosH(width,depth,height,dia,dikte=3) {
 difference() {
  hull() {
   translate([dia/2,depth,dia/2]) rotate([90,0,0])cylinder(d=dia,h=depth);
   translate([width-dia/2,depth,dia/2]) rotate([90,0,0])cylinder(d=dia,h=depth);
   translate([width-dia/2,depth,height-dia/2]) rotate([90,0,0])cylinder(d=dia,h=depth);
   translate([dia/2,depth,height-dia/2]) rotate([90,0,0])cylinder(d=dia,h=depth);  
  }  
  translate([0,-dikte,0])hull() {
   translate([dia/2+dikte,depth,dia/2+dikte]) rotate([90,0,0])cylinder(d=dia,h=depth);
   translate([width-dia/2-dikte,depth,dia/2+dikte]) rotate([90,0,0])cylinder(d=dia,h=depth);
   translate([width-dia/2-dikte,depth,height-dia/2-dikte]) rotate([90,0,0])cylinder(d=dia,h=depth);
   translate([dia/2+dikte,depth,height-dia/2-dikte]) rotate([90,0,0])cylinder(d=dia,h=depth);  
  }  
 }
}

