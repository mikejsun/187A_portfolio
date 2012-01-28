import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class SquaresCircles extends PApplet {

//Michael Jihoon Sun 
//Mikejsun5@gmail.com

PFont font;
float cubeSize;
float i = 0.0f;
int Counter = second();
int Size;

// Coordinates where each shape will be initialized. 
float leftX = 83.33f;
float middleX = 250.0f;
float rightX = 416.65f;
float topY = 166.67f;
float bottomY = 333.34f;

//Variables for moving text
String S = "S Q U A R E S";
String C = "C I R C L E S";
String Plus = "+";
String Equals = "=";

boolean restart = false;


public void setup(){
  size(500,500,P3D);
  cubeSize = 40;
  smooth();
  font = loadFont("AppleGothic-20.vlw");
  textFont(font);
  textAlign(CENTER);
  fill(255);
  
}


public void draw(){
  i += 0.015f;
  background(0);
  lights();
  stroke(255,255,255,50);
  line(0,400,500,400);
  Counter++;
  println(i);
    int Size = 40;
    if (Counter>0 && Counter <= 420 ){
      Squares(leftX,topY,Size);
      Squares(leftX,bottomY,Size);
      Squares(middleX,topY,Size);
      Squares(middleX,bottomY,Size);
      Squares(rightX,topY,Size);
      Squares(rightX,bottomY,Size);
      if (i > 0.5f && i<=1.5f){
        rect(leftX,topY,Size,Size);
        rect(leftX,bottomY,Size,Size);
        rect(middleX,topY,Size,Size);
        rect(middleX,bottomY,Size,Size);
        rect(rightX,topY,Size,Size);
        rect(rightX,bottomY,Size,Size);
      }
      if (i > 1.5f){
          Cubes();
        
      }
    }
    if (i > 5.7f){
      fill(255,255,255);
      textSize(30);
      smooth();
      strokeWeight(1);
      text(Plus, width/3 - 5,460);
      Squares(leftX, 450, Size);
      pushMatrix();
      translate(leftX,450);
      rotateX(i);
      rotateY(i);
      box(cubeSize);
      noFill();
      popMatrix(); 
      }
    if (Counter > 420 && Counter <= 840){
      Circles(leftX, topY, Size);
      Circles(leftX, bottomY, Size);
      Circles(middleX, topY, Size);
      Circles(middleX, bottomY, Size);
      Circles(rightX, topY, Size);
      Circles(rightX, bottomY, Size);
      if (i > 6.0f){
        ellipse(leftX,topY,Size,Size);
        ellipse(leftX,bottomY,Size,Size);
        ellipse(middleX,topY,Size,Size);
        ellipse(middleX,bottomY,Size,Size);
        ellipse(rightX,topY,Size,Size);
        ellipse(rightX,bottomY,Size,Size);
        if (i > 7.0f){
          Sphere(leftX,topY,Size);
          Sphere(leftX,bottomY,Size);
          Sphere(middleX,topY,Size);
          Sphere(middleX,bottomY,Size);
          Sphere(rightX,topY,Size);
          Sphere(rightX,bottomY,Size);
        }
      }
    }
    if(i> 12.0f){
      fill(255,255,255);
      textSize(30);
      strokeWeight(1);
      text(Equals, 320,461);
      noFill();
      Circles(middleX, 450, Size);
      Sphere(middleX,450,Size);
      noFill();
    }
    if (Counter >840 && Counter <= 1000){
      pushMatrix();
      rotateX(i);
      Circles(leftX+20,topY,Size+5);
      ellipse(leftX+20,topY,Size,Size+5);
      popMatrix();
      
      pushMatrix();
      rotateX(i);
      Squares(rightX+20, topY, Size+5);
      translate(rightX+20,topY);
      rotateX(i);
      rotateY(i);
      box(cubeSize+5);
      popMatrix();
    }
    if (Counter > 1000 && Counter <=1410){
      pushMatrix();
      rotateX(i);
      Squares(middleX,topY,Size*2);
      Circles(middleX,topY,Size*2);
      ellipse(middleX,topY,Size*2,Size*2);
      translate(middleX,topY);
      rotateX(i);
      rotateY(i);
      box(cubeSize*2);
      popMatrix();
    }
    if (Counter > 1400){
        Squares(rightX,450,Size);
        Circles(rightX,450,Size);
        ellipse(rightX,450,Size,Size);
        pushMatrix();
        translate(rightX,450);
        rotateX(i);
        rotateY(i);
        box(cubeSize);
        popMatrix();
    }
    if (Counter > 1480 && Counter <=1505){
      fill(255,255,255);
      text(S, 250, 250);
    }
    if (Counter >1510 && Counter <=1535){
      fill(255,255,255);
      text(Plus, 250, 250);
    }
    if (Counter > 1540 && Counter <=1565){
      fill(255,255,255);
      text(C, 250, 250);
    }
    if (Counter >1567 && Counter <=1571){
      fill(255,255,255);
      text(":)",250,250);
    }
    if (Counter >1600){

      textAlign(CENTER);
      smooth();
      textSize(25);
      text("D e s i g n e d  b y  M i k e  S u n", 250,250);
      text("Hit return to restart", 250,280);
    }
      
    
}
       
    

public void keyPressed(){
  if (key == ENTER){
    Counter =0;
    i =0;
  }
}



//All methods are for the shapes.


  

public void Squares(float x, float y, int Size){
  noFill();
  rectMode(CENTER);
  rect(x,y,Counter%Size*2,Counter%Size*2);
  }
  
public void Circles(float x, float y, int Size){
  noFill();
  ellipseMode(CENTER);
  ellipse(x,y,Counter%Size*2,Counter%Size*2);
}

public void Sphere(float x, float y,int Size){
  ellipse(x,y,Size,Size);
  if (i > 7.0f && i <= 8.5f){
    fill(random(255),random(255),random(255),30);
  } else if (i > 8.5f && i <=10.0f){
    fill(random(255),random(255),random(255),30);
  } else if (i > 10.0f && i <=11.5f){
    noFill();
  }
 }
 
 public void SquareCircle(float x, float y, float Size){
   ellipse(x, y, Size, Size);
   rect(x,y,Size,Size);
 }

public void Cubes(){
    pushMatrix();
    translate(83.33f,166.67f);
    rotateX(i);
    rotateY(i);
    box(cubeSize);
    if (i > 2.5f && i <= 4.0f){
      fill(0,0,random(255),30);
    } else if (i >4.0f && i <=5.5f){
       fill(0,0,255,30);
    }
    popMatrix();
  
    pushMatrix();
    translate(250,166.67f);
    rotateX(i);
    rotateY(i);
    box(cubeSize);
    if (i > 2.5f && i <= 4.0f){
      fill(random(255),0,0,30);
    } else if (i > 4.0f && i <=5.5f){
      fill(255,0,0,30);
    }
    popMatrix();
 
    pushMatrix();
    translate(416.65f,166.67f);
    rotateX(i);
    rotateY(i);
    box(cubeSize);
    if (i > 2.5f && i <= 4.0f){
      fill(0,random(255),0,30);
    } else if (i > 4.0f && i <= 5.5f){
      fill(0,255,0,30);
    }
    popMatrix();
  
    pushMatrix();
    translate(83.33f,333.34f);
    rotateX(i);
    rotateY(i);
    box(cubeSize);
    if (i > 2.5f && i <= 4.0f){
      fill(random(255),random(255),0,30);
    } else if (i >4.0f && i <=5.5f){
      fill(255,255,0,30);
    }
    popMatrix();
  
    pushMatrix();
    translate(250,333.34f);
    rotateX(i);
    rotateY(i);
    box(cubeSize);
    if (i > 2.5f && i <= 4.0f){
      fill(random(255),random(155),0,30);
    } else if (i > 4.0f && i <=5.5f){
      fill(255,155,0,30);
    }
    popMatrix();
  
    pushMatrix();
    translate(416.65f,333.34f);
    rotateX(i);
    rotateY(i);
    box(cubeSize);
    if (i > 2.5f && i <= 4.0f){
      fill(random(255),random(255),random(255),30);
    } else if (i > 4.0f && i <=5.5f){
      fill(255,255,255,30);
    }
    popMatrix();
  }







  
  

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "SquaresCircles" });
  }
}
