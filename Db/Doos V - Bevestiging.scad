Frontplaatbevestiging(80,50,30,10);

// Frontplaatbevestiging voor implantaatbusjes en M2.5 schroeven
module Frontplaatbevestiging(width,depth,height,dia,dikte=3, // Zelfde params als waarmee de doos werd gemaakt 
 lengtebusje=4, // Hoogte van een busje
 diepte=3) // Verzinking (hoogte frontplaat, of eventueel meer voor een verzonken front)
{ 
 CYLINDERDOORSNEDE=8;
 dikte=dikte-dikte*2+CYLINDERDOORSNEDE/2;
 translate([dia/2+dikte,dia/2+dikte,0]) difference() {
  cylinder(d=CYLINDERDOORSNEDE,h=height-diepte);
  translate([0,0,height-diepte-lengtebusje])cylinder(d=3.4,h=lengtebusje+1);
 }
 translate([width-dia/2-dikte,dia/2+dikte,0])difference() {
  cylinder(d=CYLINDERDOORSNEDE,h=height-diepte);
  translate([0,0,height-diepte-lengtebusje])cylinder(d=3.4,h=lengtebusje+1);
 }
 translate([width-dia/2-dikte,depth-dia/2-dikte,0])difference() {
  cylinder(d=CYLINDERDOORSNEDE,h=height-diepte);
  translate([0,0,height-diepte-lengtebusje])cylinder(d=3.4,h=lengtebusje+1);
 }
 translate([dia/2+dikte,depth-dia/2-dikte,0])difference() {
  cylinder(d=CYLINDERDOORSNEDE,h=height-diepte);
  translate([0,0,height-diepte-lengtebusje])cylinder(d=3.4,h=lengtebusje+1);
 }
}

