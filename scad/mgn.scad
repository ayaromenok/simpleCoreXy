include <../../lib/lib2.scad>

//MGN12H();

module MGN12H(length=300, px=0,py=0,pz=0,  rx=0,ry=0,rz=0,     mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
        difference(){
            yCube(45.4,27,13,   0,0,6.5);
            yCyl(1.75,10,    10,0,12);
            yCyl(1.75,10,    -10,0,12);
        }//difference
        difference(){
            yCube(length, 12,8, 0,0,4);
            for(i=[-length/2+10:25:length/2]){
                yCyl(1.75,10,    i,0,4);
                yCyl(3,5,    i,0,6);
            }//for
        }//difference
    }//transform
}//module         