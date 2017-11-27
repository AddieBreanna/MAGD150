// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
//I used this code as a base to get my petals to move. 

Petals [] petals= new Petals [500];
WhitePetals[] whitepetals=new WhitePetals[100];

void setup(){
  size (1000,800);
  for(int i=0; i < petals.length; i++){
    petals[i]= new Petals();
  }
  
  for(int i=0; i < whitepetals.length; i++){
    whitepetals[i]= new WhitePetals();
  }
  
}

void draw(){
   background(16,232,229);
  //Flower Stem 
    fill(95,255,180);
    rect(475,500,50,600,4);
    
 //Flower Center
   ellipse(500,500, 300,300);
   
 //Petal Placement and Display
   for(int i=0; i < petals. length; i++){
     petals[i].update();
     petals[i].display();
   }
  
for(int i=0; i < whitepetals. length; i++){
     whitepetals[i].update();
     whitepetals[i].display();
   }
   
}