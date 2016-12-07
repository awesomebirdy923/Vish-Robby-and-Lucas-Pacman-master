Pacman pac; 
Ghost ghost;
Maze block;
Maze block2;
Maze block3;
Maze block4;
Maze block5;
Maze block6;
Maze block7;
Maze block8;
/*Maze block9;
Maze block10;
Maze block11;
Maze block12;
Maze block13;
Maze block14;
Maze block15; */
ArrayList<Maze> blocks;
int direction = 56;

void setup(){
  playSound("ShadowBeatz - Pac-Man [Dubstep Remix] - Dubstep.wav");

pac = new Pacman(400,400,50,50);
ghost = new Ghost(300,400,50,50);
block = new Maze(50,80,20,130,1);
block2 = new Maze(70,190,130,20,1);
block3 = new Maze(730,80,20,130,1);
block4 = new Maze(620,190,130,20,1);
block5 = new Maze(376,72,24,140,1);
block6 = new Maze(310,137,160,24,1);
block7 = new Maze(50,590,20,130,1);
block8 = new Maze(70,700,130,20,1);
/*block9 = new Maze(400,400,50,50,1);
block10 = new Maze(400,400,50,50,1);
block11 = new Maze(400,400,50,50,1);
block12 = new Maze(400,400,50,50,1);
block13 = new Maze(400,400,50,50,1);
block14 = new Maze(400,400,50,50,1);
block15 = new Maze(400,400,50,50,1);*/
blocks = new ArrayList<Maze>();
size(800,800);
blocks.add(block);
blocks.add(block2);
blocks.add(block3);
blocks.add(block4);
blocks.add(block5);
blocks.add(block6);
blocks.add(block7);
blocks.add(block8);
/*blocks.add(block9);
blocks.add(block10);
blocks.add(block11);
blocks.add(block12);
blocks.add(block13);
blocks.add(block14);
blocks.add(block15);*/
  pac.xpos+=150;
}
//295 137
  
void draw(){
    
  println(mouseX + " " + mouseY);
  
background(0,0,0);
pac.photo();
ghost.spawn();
print();
//block.render();
for (Maze e : blocks) {
if (pac.xpos<e.xpos-e.width){
  
   if (direction==3) {
   pac.xpos++;
  }
} 
if (pac.xpos>e.xpos){ 
  if (direction==2) {
 pac.xpos--;
  }}
  if (pac.ypos>e.ypos) {
    if (direction==1) {
     pac.ypos--; 
      
    }}
    if (pac.ypos<e.ypos-e.height) {
     if (direction==0) {
      pac.ypos++;
     } 
    }

     
  

if (pac.ypos>e.ypos&&pac.ypos<e.ypos+e.height) {
}
  
  
  
 
}
for(Maze e : blocks){
e.render();
}
if(direction == 1){
 pac.ypos +=1; 
}
else if(direction == 0){
  
pac.ypos -=1;  
}
else if(direction == 2){
  pac.xpos +=1;
}
else if(direction == 3){
  pac.xpos -=1;
}
  
  
  
}
  
  
  
  




void mouseDragged(){

}

void keyPressed(){
if (key == CODED) {
    if (keyCode == UP) {
      direction = 0;
    } else if (keyCode == DOWN) {
     direction = 1;
     
    } else if(keyCode == RIGHT){
    direction = 2;
    } else if(keyCode == LEFT){
    direction = 3;
    
    }
  } 

}
public class Pacman{
  int xpos;
  int ypos;
  int width;
  int height;
  PImage photo;
 public Pacman(int xpos, int ypos, int width, int height){
   this.xpos =  xpos;
   this.ypos =  ypos;
   this.width =  width;
   this.height = height;
   }
  
  public void photo() {

  photo = loadImage("pac.png");
  image(photo, xpos, ypos);
  if (xpos>759) {
   xpos=759; 
  }
   if (xpos<0) {
   xpos=0; 
  }
   if (ypos<00) {
   ypos=00; 
  }
   if (ypos>759) {
   ypos=759; 
  }
  }
}


public class Ghost{
  int xPos;
  int yPos;
  int width ;
  int height ;
  PImage photo;
  
public Ghost(int xPos, int yPos, int width, int height){
this.xPos = xPos;
this.yPos = yPos;
this.width = width;
this.height = height;
}

public void spawn(){
  photo = loadImage("ghost.png");
  image(photo, xPos, yPos);
  
  if (xPos>800) {
    
   xPos=780;
  }
}

}

public class Maze {
  
int xpos;
int ypos;
int ID;
int width;
int height;

public Maze(int xpos, int ypos, int width, int height, int ID) {
  
 this.height=height;
this.width=width;
this.xpos=xpos;
this.ypos=ypos;
this.ID=ID;
}

int getXpos() {
  
 return xpos; 
  
}

void setXpos(int xpos) {
  
 this.xpos=xpos; 
  
}
int getYpos() {
  
 return ypos; 
  
}

void setYpos(int ypos) {
 this.ypos=ypos; 
  
}
void setWidth(int width) {
  this.width=width;
}
int getWidth() {
  
 return width; 
}
void setHeight(int height) {
 this.height = height; 
  
}
int getHeight() {
  
 return height; 
}
int getID() {
  
  
 return ID; 
}
void setID(int ID) {
  
 this.ID=ID; 
}
  
  
  

public void render() {
  fill (69,66,190);
 rect (xpos,ypos,width,height, 7) ; 
  
}

//public vois renderAllBlacks() {
  
  
}


  
  import ddf.minim.*;
boolean soundPlayed = false;
void playSound(String fileName) {
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample(fileName);
    sound.trigger();
    soundPlayed = true;
  }
}
    

  
  








  



