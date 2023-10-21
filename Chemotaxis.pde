phrog willy;
fly guy;
boolean check=false;
fly [] flies= new fly[10];
void setup(){
  size(1000,1000);
  frameRate(60);
  for (int i=0; i<flies.length; i++)
    flies[i]=new fly();
    
   willy= new phrog(mouseX+500,mouseY+500);
}
void draw(){
  background(255);
for (int i=0; i<flies.length; i++){
    flies[i].walk();
    flies[i].show();
  }
  
  willy.show();
  willy.move();
  
}
class fly{
  int myX,myY,speed,boost;
  float distance;
  fly(){
    myX=500;
    myY=500;
    speed=5;
    distance= dist(myX,myY,mouseX,mouseY);
  }
  void walk(){ 
    if (willy.px <myX) //bias walk left/right
      myX= myX +(int)((Math.random()*speed));
    else
      myX= myX +(int)((Math.random()*speed)-speed);
    if (willy.py <myY) //bias walk up/down
      myY= myY +(int)((Math.random()*speed));
    else
      myY= myY + (int)((Math.random()*speed)-speed);
      

  }
  void show(){
  fill(0,0,0);
  ellipse(myX,myY,30,30);
  }
  
}

class phrog{
  float px;
  float py;
  int speed;
  int boost;
  phrog(float x,float y){
    px=x-200;
    py=y-200;
    boost =50;
    speed=3;
  }
  void move(){
   if (mouseX >px){
      px=px+(int)(Math.random()*speed);
  
      }     
  else {
    px=px+(int)(Math.random()*speed)-speed;
    
    }
  if (mouseY >py){
    py=py+(int)(Math.random()*speed);
   
    }
  else {
    py=py+(int)(Math.random()*speed)-speed;
   
      }
  
  
  }
  
  void show(){
  fill(204, 255, 204);
  strokeWeight(0);
  ellipse(px , py , 180, 150); //body
ellipse(px  - 45, py  - 55, 50, 50); //left eye socket
ellipse(px  + 45, py  - 55, 50, 50); //right eye socket
fill(252, 255, 221); //belly
ellipse(px, py+20, 110, 110);
fill(204, 255, 204);
strokeWeight(0.5);
arc(px  - 35, py  + 70, 30, 40, -20, 200, OPEN); //legs
arc(px  + 35, py  + 70, 30, 40, -20, 200, OPEN);
noFill();
strokeWeight(0.5);
fill(204, 255, 204); //legs
arc(px + 165-200, py , 30, 40, -20, 200, OPEN); //left arm
arc(px + 235-200, py, 30, 40, -20, 200, OPEN); //right arm
fill(0, 0, 0);
ellipse(px  - 47, py  - 60, 20, 20); //left pupil
ellipse(px + 47, py  - 60, 20, 20); //right pupil
  }
}

void keyPressed() {
  //i'd like to detect when space bar is pressed.

  if (key==' ') {

    check = true;
    //
  }//if
  //
}//func
