// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
//I used this code as a base to get my petals to move.

class WhitePetals{

PVector position;
  PVector velocity;
  PVector acceleration;
  float speed;
  
//The position is set to random so the petals will show in different postions every time the sketch is opened. 
  WhitePetals(){
    position= new PVector (random(width), random(height));
    velocity= new PVector (0,0);
    speed= 2;
}

//This is the movement of the white petals. 
  void update(){
    PVector mouse= new PVector(mouseX, mouseY);
    acceleration= PVector.sub (mouse, position);
    acceleration.normalize ();
    acceleration.mult (-0.01);
    
    velocity.add (acceleration);
    velocity.limit (speed);
    position.add (velocity);
  }
//This is the basic shape of my white triangles. 
void display(){
    noStroke();
    fill(255);
    translate(width/4, height/4);
    rotate(PI/2.0);
    scale(1.01);
    triangle(position.x, position.y, position.x+ 100, position.y, position.x+50, position.y+50);
  }
}