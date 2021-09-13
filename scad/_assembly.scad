include <../../lib/lib2.scad>
include <alu_profile.scad>
include <mgn.scad>
include <profile_connector.scad>
include <ext_parts.scad>

asm_bottom();
asm_top();
asm_vecrtical();

module asm_vecrtical(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
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
    }//transform
}//module asm_vertical

module asm_bottom(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
        alu20x20(400,   0,210,0,    0,90,0);
        alu20x20(400,   0,-210,0,    0,90,0);
        alu20x20(400,   190,0,0,    90,0,0);
        alu20x20(400,   -190,0,0,    90,0,0);
        profile_connector2(180,200,0, 90,0,-90);
        profile_connector2(180,-200,0, 90,0,180);
        profile_connector2(-180,200,0, 90,0,0);
        profile_connector2(-180,-200,0, 90,0,90);
    }//transform
}//module asm_bottom

module asm_top(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
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
    }//transform
}//module asm_top
