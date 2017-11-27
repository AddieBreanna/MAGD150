//This is the first bigger purple ellipse.
class Jusanthrapa {
 float x,y,w,h;
 float xspeed=3;
 float yspeed=3;
  
 //These are the elements that will shape Jusanthrapa in the void display. 
 Jusanthrapa(float JusanX, float JusanY, float JusanW, float JusanH) {
   x=JusanX;
   y=JusanY;
   w=JusanW;
   h=JusanH;
        
 }
 
 void move(){
   x=x+xspeed;
   y=y+yspeed;
    
   if ((x>width)||(x<2)){
    xspeed=xspeed*-1;
   }
   if ((y>height)||(y<2)){
     yspeed=yspeed*-1;
   }
 }
  void show(){
   
 //Jusanthrapas shape
 noStroke();
 fill(184,64,255);
 ellipse (x, y,w,h);
  }
}