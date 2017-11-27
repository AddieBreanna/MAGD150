//I decided to have two classes. 
//Pardon the strange class names. They were a friends idea. 
Jusanthrapa jusanthrapa;//This is my first class. 
Tinythrapa  tinythrapa;//This is my second class. 



void setup(){
  size(1000,800);
 jusanthrapa= new Jusanthrapa(50,50,50,50);
 tinythrapa= new Tinythrapa(25,25,15,10);
 background(0);
 }
  
 void draw(){
   jusanthrapa.move(); //My first function for Jusanthrapas movement.
   jusanthrapa.show();//My Second function for Jusanthrapas appearance. 
   tinythrapa.tinymove();//My third function for Tinythrapas movement.
   tinythrapa.tinyshow();//My Fourth function for Tinythrapas appearanc. 
   
 }
 
 class Tinythrapa{
 float x,y,w,h;
 //The float speed variables are used to determine the speed of movement. 
 //I chose to have Jusanthrapa and Tinythrapa to move at the same speed. 
 //However, I gave Tiny his own float variable in assumption that if this was a bigger project, having Tiny have his own variable allows for more control. 
 float xTspeed=3;
 float yTspeed=3;
  
 //The floating variables for Tinythrapas shape.
 Tinythrapa(float TinyX, float TinyY, float TinyW, float TinyH) {
   x=TinyX;
   y=TinyY;
   w=TinyW;
   h=TinyH;
        
 }
 //This function is where I input Tinys movement. 
 void tinymove(){
 
   x=x+xTspeed;
   y=y+yTspeed;
    
    //The if statements determine where Tiny will change direction. 
   if ((x>width)||(x<3)){
    xTspeed=xTspeed*-1;
   }
   if ((y>height)||(y<3)){
     yTspeed=yTspeed*-1;
   }
 }
 //This function is Tinys appearance. 
  void tinyshow(){

 noStroke();
 //BLue was a nice contrast for the purple and black. 
 fill(0,174,232);
 ellipse (x, y,w,h);
  }
 }