float eye1;
float eye2;

int a=max(2,2);
int b=max(4,4);
int c=min(height/2,height/2);
int d=min(10,10);


void setup(){
  size(400,400);
  frameRate(30);
  
}

void draw(){
  background(211,252,255);
  ellipseMode(CENTER);
  
  //Bouncy Bubble Ability
  translate(mouseX,mouseY);
   
 //Interactive bubble body
 fill(0,mouseX,255);
 ellipse(mouseX,mouseY, 200,200);
 
 //Interactive bubble eyes
 eye1=random(255);
 eye2=random(255);
 
 fill(eye1,eye2);
 ellipse(mouseX-40,mouseY-40,50,50);
 ellipse(mouseX+40,mouseY-40,50,50);
 
 fill(0); 
 ellipse(mouseX-40,mouseY-40,40,40);
 ellipse(mouseX+40,mouseY-40,40,40);
 
 fill(eye1,eye2);
 ellipse(mouseX-40,mouseY-40,30,30);
 ellipse(mouseX+40,mouseY-40,30,30);
 
 fill(mouseX,200,200);
 ellipse(mouseX-40,mouseY-40,20,20);
 ellipse(mouseX+40,mouseY-40,20,20);
 
 fill(0);
 ellipse(mouseX-40,mouseY-40,10,10);
 ellipse(mouseX+40,mouseY-40,10,10);
 
 
 //Squishy Bubble Body
 stroke(255);
 fill(mouseX,255,255);
 ellipse(width/2,height/2, pmouseX+20,pmouseY+20);
 
//Moving Bubble 1
fill(255);
ellipse(a,b,50,50);
a=a+3;

//Moving Bubble 2
fill(0,100,200);
ellipse(c,d,60,60);
d=d+3;

//Moving Bubble 3
fill(0,50,100);
ellipse(a,d,40,40);
dist(a,b,c,d);

b=b/6;
 }

void mousePressed(){
println("We're cute bubbles.");
}

void keyPressed(){
println(frameCount);
println(mouseX);
println(mouseY);

}