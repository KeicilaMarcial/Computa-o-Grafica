PImage img;
PFont f;
PVector eye,center, up;
void setup(){
  size(800,800,P3D);  
  lights();
  f= createFont("Arial",12,true);
    eye = new PVector(width/2.0, height/2.0, 800);
    center = new PVector(width/2, height/2, 0);
    up = new PVector(0, 1, 0);
}

void draw(){
   background(#5F9EA0);
   
  //lights 
    pointLight(255, 255, 255, width/2, height/2, 400);
    ambientLight(51, 102, 126);
    directionalLight(51, 102, 126, -1, 0, 0);
    spotLight(51, 102, 126, 320, 80, 160, -1, 0, 0, PI/2, 2);
  
  //Camera
   camera(eye.x,eye.y,eye.z,center.x,center.y,center.z,up.x,up.y,up.z);
  
  //Perspectiva
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), 
            cameraZ/10.0, cameraZ*10.0);
 

  //Lataria
  pushMatrix();                           //salva as coordenadas atuais 
    translate(width/2, height/2, 0);
    //rotateX(PI*((float)mouseY/(width)));    //rotaciona no eixo X qnd movimenta o mouse no sentido do eixo Y
    rotateY(PI*((float)mouseX/(height/2)));   //rotaciona no eixo Y qnd movimenta o mouse no sentido do eixo X
    //noStroke();                            
    stroke(255);                            //arestas
    
    fill(35,107,142);
    box(220+20, 300, 100+500);                     
  
    //Para-brisa
    pushMatrix();
      translate(-2,0,52+250);
      fill(112,219,219);
      //janelas
      rect(5,-130,100,80, 10); 
      rect(-100,-130,100,80, 10);
      translate(0,0,2);
      stroke(0);
      //Limpador de parabrisa
      line(50,-50,20,-120);
      line(-50,-50,-90,-120);
    popMatrix();
  
    //Farois
    pushMatrix();
      translate(-4,0,52+250);
      //Seta
      fill(210,105,30);
      circle(5+90, 20, 20);
      circle(5-90, 20, 20);
      //Farol
      fill(245,236,227);
      circle(5+90, 60, 50);
      circle(5-90, 60, 50);
      //Logo
      circle(5, 10, 50);
   popMatrix();
  
  
    //Placa da kombi
    pushMatrix();
      translate(-5,5,52+260);
      stroke(#3d3d3d);
      rect(-50,110,115,35);
      translate(10,20,2);
      fill(0);
      textFont(f,15);
      text("4002KLB123",-40,115);
    popMatrix();
  
  //Parachoque
   pushMatrix();
      translate(-5,5,52+250);
      fill(255);
      noStroke();
      rect(-140,120,300,25,5);
    popMatrix();
  
    //Rodas
    translate(100, 150, 200);
    pushMatrix();
      fill(0);
      noStroke();
      sphere(30);  
    popMatrix();
    pushMatrix();
      //translate(x,y,z);
      translate(-200,0, 0);
      fill(0);
      noStroke();
      sphere(30);  
    popMatrix();
    pushMatrix();
      translate(-200,0, -400);
      fill(0);
      noStroke();
      sphere(30);  
    popMatrix();
    pushMatrix();
      translate(0,0, -400);
      fill(0);
      noStroke();
      sphere(30);  
    popMatrix();
    
   //fundo branco lateral direita
   pushMatrix();
     translate(21,15,100);
     rotateX(0);
     rotateY((PI/2));
    fill(245,236,227);
     rect(0,-316,599,110); 
    popMatrix(); 
    
   //janelas da lateral direita
   pushMatrix();
     translate(25,15,100);
     rotateX(0);
     rotateY((PI/2));
     fill(35,107,142);
     rect(40,-290,80,70, 10);      
     rect(150,-290,80,70, 10);  
     rect(260,-290,80,70, 10); 
     rect(370,-290,80,70, 10); 
     rect(480,-290,80,70, 10); 
   popMatrix();
  
  //Portas
  pushMatrix();
     translate(21,120,100);
     rotateX(0);
     rotateY((PI/2));
     stroke(255);
     rect(40,-290,200,130, 10);
     rect(320,-290,200,130, 10);
     
  popMatrix();
  
  //massanetas lateral direita
  pushMatrix();
      translate(20, -150, 20);
      fill(0);
      noStroke();
      sphere(10);  
   popMatrix();
   
  pushMatrix();
    translate(20, -150, -260);
    fill(0);
    noStroke();
    sphere(10);  
   popMatrix();
  
  popMatrix();
  
  
}
