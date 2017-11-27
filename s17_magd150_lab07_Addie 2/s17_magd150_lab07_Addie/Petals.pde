// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
//I used this code as a base to get my petals to move.

class Petals {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float speed;
  
  Petals(){
    position= new PVector (random(width), random(height));
    velocity= new PVector (0,0);
    speed= 2;
  }
  
  //The acceleration is negetive to give the appearance of floating away. As if someone blew on it. 
  void update(){
    PVector mouse= new PVector(mouseX, mouseY);
    acceleration= PVector.sub (mouse, position);
    acceleration.normalize ();
    acceleration.mult (-0.02);
    
    velocity.add (acceleration);
    velocity.limit (speed);
    position.add (velocity);
  }
  
  void display(){
    noStroke();
    fill(255,166,213);
    triangle(position.x, position.y, position.x+ 100, position.y, position.x+50, position.y+50);
  }
}
  