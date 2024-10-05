fin_width = 1;
fin_dist = 16;
fin_gap = 1;
fin_height = 5;
length = 30;

module fins()
{
    cube([length, fin_width, fin_height]);
    translate([0,fin_width + fin_dist,0]) cube([length, fin_width, fin_height]);
    
    translate([0,fin_width + fin_gap,0])
    {
        cube([length, fin_width, fin_height]);
        translate([0,fin_width + fin_dist,0]) cube([length, fin_width, fin_height]);
    }
    
}


fins();
cube([length, 2* fin_gap + fin_dist + 2* fin_width, 1]);