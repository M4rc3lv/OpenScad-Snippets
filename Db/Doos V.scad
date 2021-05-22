DoosV(80,50,30,10);

module DoosV(width,depth,height,dia,dikte=3) {
 difference() {
  hull() {
   translate([dia/2,dia/2,0])cylinder(d=dia,h=height);
   translate([width-dia/2,dia/2,0])cylinder(d=dia,h=height);
   translate([width-dia/2,depth-dia/2,0])cylinder(d=dia,h=height);
   translate([dia/2,depth-dia/2,0])cylinder(d=dia,h=height);
  } 
  translate([0,0,dikte])hull() {
   translate([dia/2+dikte,dia/2+dikte,0])cylinder(d=dia,h=height);
   translate([width-dia/2-dikte,dia/2+dikte,0])cylinder(d=dia,h=height);
   translate([width-dia/2-dikte,depth-dia/2-dikte,0])cylinder(d=dia,h=height);
   translate([dia/2+dikte,depth-dia/2-dikte,0])cylinder(d=dia,h=height);
  } 
 }
}
