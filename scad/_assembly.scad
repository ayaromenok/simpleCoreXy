include <../../lib/lib2.scad>
include <alu_profile.scad>
include <mgn.scad>
include <profile_connector.scad>


//vertical
alu20x20(400,   190,210,210);
alu20x20(400,   -190,210,210);
alu20x20(400,   190,-210,210);
alu20x20(400,   -190,-210,210);
//bottom
alu20x20(400,   0,210,0,    0,90,0);
alu20x20(400,   0,-210,0,    0,90,0);
alu20x20(400,   190,0,0,    90,0,0);
alu20x20(400,   -190,0,0,    90,0,0);
profile_connector(-190,210,-10,     rx=180, isLight=true);
profile_connector(190,210,-10,      rx=180,mx=1, isLight=true);
profile_connector(190,-210,-10,     rx=180,rz=180, isLight=true);
profile_connector(-190,-210,-10,    rx=180,rz=180,mx=1, isLight=true);

//top
alu20x20(400,   0,210,420,    0,90,0);
alu20x20(400,   0,-210,420,    0,90,0);
alu20x20(400,   190,0,420,    90,0,0);
alu20x20(400,   -190,0,420,    90,0,0);

MGN12H(350,     0,200,420, 90,0,0);
MGN12H(350,     0,-200,420, -90,0,0);

MGN12H(350,     0,0,420, 0,0,90);