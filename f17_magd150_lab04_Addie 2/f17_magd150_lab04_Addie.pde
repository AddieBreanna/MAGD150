int x=0;
int y=0;
int speed=7;
int state=0;

float xx=100;
float yY;

float speedX=5;
float gravity=0.1;

//Background Ball Int
int xxX=200;
int yyY=200;
int w=30;
int h=30;


void setup(){
 size(400,400);
 frameRate(30);
   }
   
 void draw(){
  
  //Background Interaction
if (mouseX< width/4){
  background(115,171,232);
}else if (mouseX < 2*width/4){
  background (181,38,232);
}else if (mouseX<3*width/4){
background(0,255,113);
}else{
  background(232,84,12);
  }
  
 //The Edge Bouncy Ball
 noStroke();
 fill(255,32,190);
 ellipse(x,y,40,40);
 
 if (state==0){
   x=x+speed;
   if(x>width-30){
     x=width-30;
     state=1;
   }
 }else if (state==1){
   y=y+speed;
   if(y>height-30){
     y=height-30;
     state=2;
   }
 }else if (state==2){
   x=x-speed;
   if(x<0){
     x=30;
     state=3;
   }
 }else if (state==3){
   y=y-speed;
   if(y<0){
     y=30;
     state=0;
   }
 }
 
 //Bouncy Ball
 fill (10,226,232);
 noStroke();
 ellipse(xx,yY,50,50);
 
 yY=yY+speedX;
 speedX=speedX+ gravity;
 
 if (yY>height){
   speedX=speedX*-0.80;
   
   yY=height;
 }
 
 //Background Ball
 for(int xxX=80;xxX<width;xxX+=80){
   
   stroke(255);
   fill(59,255,0);
   ellipse(xxX, yyY,30, 30);
 }
 
 //Ball
 fill(mouseX, 0,mouseY);
 ellipse(mouseX-20,mouseY-20,100,100);
 
 }
  
void mousePressed(){
  println("Let the beat drop");
}
  
void keyPressed(){
for(int xxX=80;xxX<width;xxX+=80){
   
   stroke(255);
   fill(59,255,0);
   ellipse(xxX, yyY,60, 60);
}
}
 