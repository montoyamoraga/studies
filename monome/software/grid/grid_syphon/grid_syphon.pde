//grid syphon

// import libraries
import codeanticode.syphon.*;

// declare new object
SyphonServer syphonServer;

void setup() {
  
  size(400, 400, P3D);
  
  syphonServer = new SyphonServer(this, "grid_syphon");
}

void draw() {
  
  background(127);
  
  lights();
  
  translate(width/2, height/2);
  
  rotateX(frameCount * 0.01);
  
  box(150);
  
  syphonServer.sendScreen();
}
