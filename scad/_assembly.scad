include <../../lib/lib2.scad>
include <alu_profile.scad>
include <mgn.scad>
include <profile_connector.scad>


//vertical
alu20x20(400,   190,210,210);
alu20x20(400,   -190,210,210);
alu20x20(400,   190,-210,210);
alu20x20(400,   -190,-210,210);
//v-top
profile_connector2(190,200,410, 0,180,90);
profile_connector2(180,-210,410, 0,180);
profile_connector2(-180,210,410, 0,90);
profile_connector2(-190,-200,410, 0,90,90);
//v-bot
profile_connector2(180,210,10, 0,-90,0);
profile_connector2(190,-200,10, 0,0,90);
profile_connector2(-190,200,10, 0,0,-90);
profile_connector2(-180,-210,10, 0,0,0);

//bottom
alu20x20(400,   0,210,0,    0,90,0);
alu20x20(400,   0,-210,0,    0,90,0);
alu20x20(400,   190,0,0,    90,0,0);
alu20x20(400,   -190,0,0,    90,0,0);
profile_connector2(180,200,0, 90,0,-90);
profile_connector2(180,-200,0, 90,0,180);
profile_connector2(-180,200,0, 90,0,0);
profile_connector2(-180,-200,0, 90,0,90);

//top
alu20x20(400,   0,210,420,    0,90,0);
alu20x20(400,   0,-210,420,    0,90,0);
alu20x20(400,   190,0,420,    90,0,0);
alu20x20(400,   -190,0,420,    90,0,0);
profile_connector(-190,210,430,     rz=-90, isLight=true);
profile_connector(190,210,430,      rz=90,mx=1, isLight=true);
profile_connector(190,-210,430,     rz=90, isLight=true);
profile_connector(-190,-210,430,   rz=-90,mx=1, isLight=true);


MGN12H(350,     0,200,420, 90,0,0);
MGN12H(350,     0,-200,420, -90,0,0);

MGN12H(350,     0,0,420, 0,0,90);