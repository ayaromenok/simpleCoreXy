include <../../lib/lib2.scad>


//con_x2__nuts_x5();
//profile_connector2();
/*
rotate([0,0,90]){
profile_connector2(-25,-25, rx=-90);
profile_connector2(25,25,rx=-90, rz=180);
}
*/
//profile_connector2_part();
//profile_connector(rx=180);
//profile_connector(rx=180, isLight=true);
//alu20x20_cut(50);
//nutsHolderM3_20x20(rx=180);

module profile_connector2(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0, isLight=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
        p=[[0,0],[43,0],[0,43]];
        profile_connector2_part(23,0,0, 0,0,180);
        profile_connector2_part(0,0,23, 0,90,0);
        yPoly(p=p,szz=3, px=3,py=10,pz=3, rx=90 );
        yPoly(p=p,szz=3, px=3,py=-7,pz=3, rx=90 );
        yCube(14,14,.8, 19.6,0,19.6, 0,-45,0);
    }//transform
}//module

module profile_connector2_part(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0, isLight=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
        difference(){
            union(){
                yCube(46,20,6,  0,0,0, 0,0,0);
            }//union            
            alu20x20_cut(50, 0,0,-10, 90,0,90);
            
            //M3 holes
            yCyl(3.5/2,10,    -18,0,0);
            yCyl(3.5/2,10,    12,0,0);
            yCone(3.5,3, -18,0,0.3, 180);
            yCone(3.5,3, 12,0,0.3, 180);
            yCyl(3.5,5,    -18,0,4);
            yCyl(3.5,5,    12,0,4);
            
            if (isLight){
                yMinkCubeCyl(13,22,10,4,    0,10,2);
                yMinkCubeCyl(22,13,10,4,    30,0,2);
            }//if
        }//difference        
    }//transform
}//module

module con_x2__nuts_x5(px=0,py=0,pz=0, rx=0,ry=0,rz=0, isLight=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        profile_connector(rx=180, isLight=true);
        mirror([1,0,0])
            profile_connector(0,-65,0,rx=180,rz=180, isLight=true);
        
        nutsHolderM3_20x20(20,-22.5,-0.5,rx=180);
        nutsHolderM3_20x20(33,-22.5,-0.5,rx=180);
        nutsHolderM3_20x20(45,-22.5,-0.5,rx=180);
        nutsHolderM3_20x20(57.5,-45,-0.5,rx=180);
        nutsHolderM3_20x20(57.5,0,-0.5,rx=180);
    }//transform
}//module

module nutsHolderM3_20x20(px=0,py=0,pz=0, rx=0,ry=0,rz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz]){
        difference(){
            yCube(40,10,4,  0,10,2, 0,0,90);  
            //alu20x20_cut(50, 0,15,-5, 90);           
            yCube(6,50,6,   6.5,10,0, 0,45,0);
            yCube(6,50,6,   -6.5,10,0, 0,45,0);
            yCube(5,20,5,   4,10,3);    
            yCube(5,20,5,   -4,10,3);    
            
            //M3 nuts holes
            yCyl(3.5/2,10,    0,-5,0);
            yCyl(3.5/2,10,    0,25,0);                        
            yTube(3.4,1.75,5,   0,-5,0.4, 0,0,30,$fn=6);
            yTube(3.4,1.75,5,   0,25,0.4, 0,0,30,$fn=6);                
        }//difference      
        
    }//transform
}//module

module profile_connector(px=0,py=0,pz=0, rx=0,ry=0,rz=0, mx=0,my=0,mz=0, isLight=false){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
        difference(){
            union(){
                yCube(40,20,6,  30,0,1.5);
                yCube(40,20,6,  0,9,1.5, 0,0,90);
            }//union            
            alu20x20_cut(50, 0,14.6,-10, 90);
            alu20x20_cut(50, 34.6,0,-10, 90,0,90);
            
            //M3 holes
            yCyl(3.5/2,10,    0,-5,0);
            yCyl(3.5/2,10,    0,25,0);
            yCyl(3.5/2,10,    15,0,0);
            yCyl(3.5/2,10,    45,0,0);
            yCone(3.5,3, 0,-5,0.3, 180);
            yCone(3.5,3, 0,25,0.3, 180);
            yCone(3.5,3, 15,0,0.3, 180);
            yCone(3.5,3, 45,0,0.3, 180);
            yCyl(3.5,5,    0,-5,4);
            yCyl(3.5,5,    0,25,4);
            yCyl(3.5,5,    15,0,4);
            yCyl(3.5,5,    45,0,4);
            
            if (isLight){
                yMinkCubeCyl(13,22,10,4,    0,10,2);
                yMinkCubeCyl(22,13,10,4,    30,0,2);
            }//if
        }//difference
        
    }//transform
}//module

module alu20x20_cut(length=100, px=0,py=0,pz=0,  rx=0,ry=0,rz=0,     mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){        
        linear_extrude(height = length, center = true, convexity = 10)
        scale([1.0,1.0,1])
            import(file = "../dxf/alu20x20_cut.dxf");          
    }//transform
}//module

module alu20x20(length=100, px=0,py=0,pz=0,  rx=0,ry=0,rz=0,     mx=0,my=0,mz=0){
    translate([(px), (py), pz])
    rotate([rx,ry,rz])
    mirror([mx,my,mz]){
        linear_extrude(height = length, center = true, convexity = 10)
                        import(file = "../dxf/alu20x20.dxf");
    }//transform
}//module
