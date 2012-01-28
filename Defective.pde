//Mike Sun
//Mikejsun5@gmail.com
//DefectiveInterface

float a,c;
float hr,vr;
String message = "T H E   U N U S U A L   C A S E   O F   D E F E C T I V E   D E S I G N ";
String message1 = "'Any time you see signs or labels added to a device, it is an indication of bad design: a simple lock should not require instructions' - Donald Norman";
PFont font;
PFont font1;
PFont font2;
PFont font3;
PImage Power;
PImage Window;
PImage Key1;
PImage Lock;
PImage Hazard;
PImage facebook;


Button[] buttons = new Button[11];
Button[] BUTTONS = new Button[40];
PImage[] icons = new PImage[11];

int Counter = millis();
int load = 20;
int maxLoad = 800;


boolean button1 = true;
boolean button2 = false;
boolean button3 = false;
boolean button4 = false;
boolean button5 = false;
boolean button6 = false;
boolean button7 = false;
boolean button8 = false;
boolean button9 = false;
boolean button10 = false;
boolean button11 = false;
boolean button12 = false;

float cubeSize = 50;

float x = 172;
float y = 277;
int w = 25;
int h = 25;
int x2 = 212;
int x3 = 292;
int x4 = 372;
int x5 = 452;
int x6 = 532;
int x7 = 612;
int x8 = 692;
int x9 = 772;
int x10= 852;
int x11= 932;
int x12= 612;
int x13= 652;
int x14= 692;
int x15= 732;
int x16= 772;
int x17= 812;
int x18= 852;
int x19= 892;
int x20= 932;
int x21= 972;
int Chomper = 0;
float d = 100;
int q = 600;
int value = 0;

int maxValue = 800;

PImage back;
int middle = 600;
int o = 0;
int Size = 100;
PImage mail;
int rightside= 600;
int rightbottom= 400;
PImage heart;

float big = 10.0;
float z = 10;

void setup(){
  size(1200,600);
  smooth();
  textAlign(CENTER,CENTER);
  hr = textWidth(message)/2;
  vr = (textAscent() + textDescent())/2;
  a = width/2;
  c = height/2;
  font = loadFont("AppleGothic-20.vlw");
  font1 = loadFont("Apple-Chancery-14.vlw");
  font2 = loadFont("BlairMdITCTT-Medium-40.vlw");
  font3 = loadFont("OratorStd-30.vlw");
  Power = loadImage("Power.gif");
  Window = loadImage("Box.gif");
  Key1 = loadImage("Key.gif");
  Lock = loadImage("Lock.gif");
  Hazard = loadImage("Hazard.gif");
  back = loadImage("back.png");
  facebook = loadImage("facebook.png");
  mail = loadImage("mail.gif");
  heart = loadImage("heart.gif");

  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new Button(212+i*80,277,25,25);
  }
  //for (int i = 0; i < BUTTONS.length; i++){
  //  BUTTONS[i] = new Button(10+i*40,50,25,25);
  //}
  for (int i = 0; i < 11; i++){
    icons[i] = loadImage( i + ".gif");
  }
   textFont(font);
  stroke(0);
  //text("D e s i g n e d  b y  M i k e  S u n",1000,580);
  
  
}


void draw(){
   
  background(255);
  
  z+=0.01;
  Counter++;
  println(z);
  if (Counter > 0 && Counter <= 550){
    startScreen();
  }
  if (Counter >550){
    loading();
    if (load >=maxLoad){
      imageMode(CENTER);
      image(back,600,300);
       textFont(font);
       textSize(11);
  stroke(0);
  text("D e s i g n e d  b y  M i k e  S u n",1000,580);
      
      if (button1){ // when button is clicked/true
            textFont(font,11);
            text("OFF",x+14,y+12);
            fill(50,50,50,50);
            rect(172,277,25,25);
          } else{
            stroke(0);
            
            textFont(font,11);
            
           text("ON",x+14,y+12);
           fill(255,0,0,90);
            rect(172,277,25,25);
            drawingUp();
          }
    }
  }
  textFont(font);
   textSize(11);
            stroke(0);
            //text("D e s i g n e d  b y  M i k e  S u n",1110,580);
}

  

  




  


void startScreen(){
  
  fill(255);
  rect(0,0,width*2,height*2);
  if (abs(mouseX - a) < hr && abs(mouseY - c) < vr){
    a+=random(-30,30);
    c+=random(-30,30);
  }
  fill(0,0,0);
  smooth();
  textFont(font);
  text(message,600,125);
  textFont(font1,14);
  text(message1,600,155);
  imageMode(CENTER);
  image(Power, a-10, c-10, 30,30);
  textFont(font,15);
  text("Right click the power button to continue",a-10, c+25);
  textFont(font);
   textSize(11);
            stroke(0);
           // text("D e s i g n e d  b y  M i k e  S u n",1110,580);
  if (mouseButton==RIGHT){
    background(random(255),0,0);
      textSize(50);
      stroke(0);
      smooth();
      text("POWER",a-10,c+25);
      image(Hazard,600,250);
      stroke(random(255));
      smooth();
      textFont(font2,70);
     text("QUIT MESSING AROUND", 600, random(1,500));
  } 
}


void loading(){
  if (z > 1.0){
    textFont(font);
    smooth();
    text("L O A D I N G", 600,200);
    noFill();
    rect(200,300,800,30);
    textFont (font3,15);
    text("p r o g r e s s  b a r", 600, 290);
    if (z >1.5){
        textFont(font3,16);
        text("(Press random keys if you want to help me load faster)",600,350);
        fill(0);
        rect(200,300,load,30);
  }
  textFont(font);
   textSize(11);
            stroke(0);
            //text("D e s i g n e d  b y  M i k e  S u n",1110,580);
}
}
    
     

  

void keyPressed(){
  value++;
  load = load + 20;
}

  

void mousePressed(){
  if (mouseButton == LEFT){
    for (int i = 0; i < buttons.length; i++) {
      buttons[i].click(mouseX,mouseY); 
    }
    
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
      button1 = !button1;
    }
    if (mouseX > x2 && mouseX < x2+w && mouseY > y && mouseY < y+h){
      button2 = !button2;
    }
    if (mouseX > x3 && mouseX < x3+w && mouseY > y && mouseY < y+h){
      button3 = !button3;
    }
    if (mouseX > x4 && mouseX < x4+w && mouseY > y && mouseY < y+h){
      button4 = !button4;
    }
    if (mouseX > x5 && mouseX < x5+w && mouseY > y && mouseY < y+h){
      button5 = !button5;
    }
    if (mouseX > x6 && mouseX < x6+w && mouseY > y && mouseY < y+h){
      button6 = !button6;
    }
    if (mouseX > x7 && mouseX < x7+w && mouseY > y && mouseY < y+h){
      button7 = !button7;
    }
    if (mouseX > x8 && mouseX < x8+w && mouseY > y && mouseY < y+h){
      button8 = !button8;
    }
    if (mouseX > x9 && mouseX < x9+w && mouseY > y && mouseY < y+h){
      button9 = !button9;
    }
    if (mouseX > x10 && mouseX < x10+w && mouseY > y && mouseY < y+h){
      button10 = !button10;
    }
    if (mouseX > x11 && mouseX < x11+w && mouseY > y && mouseY < y+h){
      button11 = !button11;
    }
    if (mouseX > x12 && mouseX < x12+w && mouseY > y && mouseY < y+h){
      button12 = !button12;
    }
  }
}





void drawingUp(){
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display(); 
  }
   for (int j = 0; j < icons.length; j++){
     image(icons[j], 225+j*80,290);
   }





   //for (int k = 0; k < BUTTONS.length; k++){
  //   BUTTONS[k].display();
   ///}
   //pencil


   if (button2){
     image(icons[0],mouseX,mouseY);
     line(mouseX,mouseY,middle,200);
     middle++;
     fill(0);
     text("mmm", middle,200);
    
   }
   
   //share
   if (button3){
     share(mouseX,mouseY);
     share(mouseX-20,mouseY+30);
     share(mouseX+20,mouseY+30);
   }
   
   //negative magnifier
   if (button4){
     image(icons[2],middle,o);
     o = o + 10;
     fill(0);
     text("SHIT!",o,o);
   }
   //lightbulb
   if (button5){
     background(0);
     image(icons[3],x5+14,y+14);
   }
   //paperclip
   if (button6){
     image(heart,mouseX,mouseY);
    image(icons[4],mouseX-40,mouseY+20);
    image(mail,mouseX+40,mouseY+20);
    
   }
   //if (button7){
    // fill(0);
   //  ellipse(random(1,100),random(1,100),30,30);
   //  ellipse(100,100,30,30);
   //}
   if (button8){
     imageMode(CENTER);
     image(facebook,600,100);

   }
   //posmagnify
   if (button9){
     image(icons[7],middle,q);
     q = q - 10;
     fill(0);
     text("SHIT!",middle+10,q+90);
   }
   //text
   if (button10){
     textSize(80);
     fill(0);
     smooth();
     text("T", 100,200);
     textSize(80);
     fill(0);
     smooth();
     text("S H I R T",1100,300);
     
   }
   //alignment
   if (button11){
     line(0,10,1200,10);
     line(0,50,1200,40);
     line(0,30,1200,30);
     line(0,60,1200,60);
     line(0,30,1200,10);
     line(0,500,1200,10);
     line(0,10*9,1200,10*4);
     line(0,10*15,1200,10*11);
     line(0,400,1200,600);
     
   }
   //close
   if (button12){
     stop();
   }
   
}

void share(int x, int y)
{
  float speed = abs(x-y) + abs(y-x);
  stroke(speed);
  fill(random(150));
  ellipse(x,y,20,20);
  line(pmouseX,pmouseY,x,y);
}


void paintSpill(float z){
  fill(0,0,0,20);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,z*2,z*2);
}




class Button {    


  float x;   
  float y;   
  float w;   
  float h;   

  boolean on;  
  boolean over = false;
  boolean Clicked = false;


  Button(float tempX, float tempY, float tempW, float tempH)  {    
    x  = tempX;   
    y  = tempY;   
    w  = tempW;   
    h  = tempH;   
    on = false; 
  }    

  void click(int mx, int my) {
   
    if (mx > x && mx < x + w && my > y && my < y + h) {
      on = !on;
    }
  }
  


  // Draw the rectangle
  void display() {
    rectMode(CORNER);
    stroke(0);
    // The color changes based on the state of the button
    if (on) {
      noStroke();
      fill(150);
    } else {
      stroke(1);
      fill(255);
    }
    rect(x,y,w,h);
  }

}




