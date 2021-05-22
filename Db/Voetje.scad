Voetje();

module Voetje(hoogte=5) {
 cylinder(d1=hoogte*2-hoogte*2/5,d2=hoogte*2,h=hoogte);
 translate([0,0,5]) cylinder(d=3,h=3);
}