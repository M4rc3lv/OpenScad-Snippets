translate([0,0,33]) Frontpanel(80,50,2,10);

module Frontpanel(width,depth,height,dia,dikte=2,boorgaten=true) {
 difference() {
  hull() {
   translate([dia/2+dikte,dia/2+dikte,0])cylinder(d=dia,h=height);
   translate([width-dia/2-dikte,dia/2+dikte,0])cylinder(d=dia,h=height);
   translate([width-dia/2-dikte,depth-dia/2-dikte,0])cylinder(d=dia,h=height);
   translate([dia/2+dikte,depth-dia/2-dikte,0])cylinder(d=dia,h=height);
  } 
  if(boorgaten) {
   // Boorgaten
   translate([dia/2+dikte,dia/2+dikte,-1]) cylinder(d=2.7,h=100);          
   translate([width-dia/2-dikte,dia/2+dikte,-1]) cylinder(d=2.7,h=100);       
   translate([width-dia/2-dikte,depth-dia/2-dikte,-1]) cylinder(d=2.7,h=100);       
   translate([dia/2+dikte,depth-dia/2-dikte,-1]) cylinder(d=2.7,h=100);       
   // Verzinking
   translate([dia/2+dikte,dia/2+dikte,min(dikte/2,5)]) cylinder(d=4.6,h=100);  
   translate([width-dia/2-dikte,dia/2+dikte,min(dikte/2,5)]) cylinder(d=4.6,h=100);       
   translate([width-dia/2-dikte,depth-dia/2-dikte,min(dikte/2,5)]) cylinder(d=4.6,h=100);       
   translate([dia/2+dikte,depth-dia/2-dikte,min(dikte/2,5)]) cylinder(d=4.6,h=100);          
  }
 }
}

