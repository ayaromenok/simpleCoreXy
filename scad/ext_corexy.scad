include <../../lib/lib2.scad>

//showAllStls();
module showAllStls(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){  
        nema17_mount_L(5,0,0);             //1
        nema17_mount_R(-75,0,0);             //1
        y_idle_pulley_mount_L(-70,-35);
        y_idle_pulley_mount_R(5,-35);
    }//transform
}//module

module y_idle_pulley_mount_R(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){  
        color("darkgreen")
        import("../ext/corexy_frame/files/v2_slot5_y_idle_pulley_mount_R.STL", convexity=3);
    }//transform
}//module

module y_idle_pulley_mount_L(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){  
        color("darkgreen")
        import("../ext/corexy_frame/files/v2_slot5_y_idle_pulley_mount_L.STL", convexity=3);
    }//transform
}//module

module x_idle_pulley_mount_R(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){  
        color("darkgreen")
        import("../ext/corexy_frame/files/v2_slot5_x_idle_pulley_mount_R.STL", convexity=3);
    }//transform
}//module

module x_idle_pulley_mount_L(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){  
        color("darkgreen")
        import("../ext/corexy_frame/files/v2_slot5_x_idle_pulley_mount_L.STL", convexity=3);
    }//transform
}//module

module nema17_mount_L(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){  
        color("darkgreen")
        import("../ext/corexy_frame/files/v2_slot5_nema17_mount_L.STL", convexity=3);
    }//transform
}//module

module nema17_mount_R(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){  
        color("darkgreen")
        import("../ext/corexy_frame/files/v2_slot5_nema17_mount_R.STL", convexity=3);
    }//transform
}//module
