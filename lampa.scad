module masa_cafea (lungime_top,latime_top,grosime_top,lungime_baza,latime_baza,grosime_baza,raza_picior,inaltime_picior)
//---------------------------------------------
{
    baza_masa(lungime_baza,latime_baza,grosime_baza);
    translate([lungime_baza*0.10,latime_baza*0.15,grosime_baza])picior_masa(raza_picior,inaltime_picior);
    translate([lungime_baza*0.90,latime_baza*0.15,grosime_baza])picior_masa(raza_picior,inaltime_picior);
    translate([lungime_baza*0.10,latime_baza*0.85,grosime_baza])picior_masa(raza_picior,inaltime_picior);
    translate([lungime_baza*0.90,latime_baza*0.85,grosime_baza])picior_masa(raza_picior,inaltime_picior);
    translate([-10,-5,grosime_baza+inaltime_picior]) top_masa(lungime_top,latime_top,grosime_top);
}
//---------------------------------------------

module baza_masa(lungime_baza,latime_baza,grosime_baza)
{
    cube([lungime_baza,latime_baza,grosime_baza]);
}
//---------------------------------------------

module picior_masa(raza_picior,inaltime_picior)
{
    cylinder(r=raza_picior,h=inaltime_picior);
}
//---------------------------------------------

module top_masa(lungime_top,latime_top,grosime_top)
{
    cube([lungime_top,latime_top,grosime_top]);
}
//----------------------------------------------

masa_cafea (lungime_top=100,latime_top=50,grosime_top=2,lungime_baza=80,latime_baza=40,grosime_baza=2,raza_picior=4,inaltime_picior=30);