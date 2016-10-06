Die one;
void setup()
{
  background(255,0,0);
  size(700,455);
  noLoop();
    
}
void draw()
{
  int total= 0;
  for (int y = 30; y<400; y+= 150){
    for (int x = 40; x<400; x+= 150){
      Die one = new Die(x,y);
      one.show();
      one.roll();
      total = total + one.num; 
    }
  }
  fill(255);
  textSize(25);
  text("Die Rolls", 505,95);
  fill(255);
  textSize(20);
  text("TOTAL SUM:", 505,190);
  text(total, 545,215);
  text("AVERAGE SUM:", 495,300);
  text(total/9, 550,325);
}
void mousePressed()
{
  background(255,0,0);
  redraw();
}
class Die
{
  int myX, myY, num;
  Die(int x, int y)
  {
    myX=x;
    myY=y;
    num = (int)(Math.random()*6)+1;
  }
  void roll()
  {  
    int rectSize = 100;
    int el = 12;
    if (num == 1){
      fill(0);
      ellipse(myX+rectSize/2,myY+rectSize/2,el, el);
    }
    else if (num == 2){
      fill(0);
      ellipse(myX+rectSize/4,myY+rectSize/4,el, el);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,el, el);
    }
    else if (num == 3){
      fill(0);
      ellipse(myX+rectSize/2,myY+rectSize/4,el, el);
      ellipse(myX+rectSize/2,myY+rectSize/2,el, el);
      ellipse(myX+rectSize/2,myY+3*rectSize/4,el, el);
    }
    else if (num == 4){
      fill(0);
      ellipse(myX+rectSize/4,myY+rectSize/4,el, el);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,el, el);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,el, el);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,el, el);
    }
    else if (num == 5){
      fill(0);
      ellipse(myX+rectSize/4,myY+rectSize/4,el, el);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,el, el);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,el, el);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,el, el);
      ellipse(myX+rectSize/2,myY+rectSize/2,el, el);
    }
    else if (num == 6){
      fill(0);
      ellipse(myX+rectSize/4,myY+rectSize/4,el, el);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,el, el);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,el, el);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,el, el);
      ellipse(myX+rectSize/4,myY+2*rectSize/4,el, el);
      ellipse(myX+3*rectSize/4,myY+2*rectSize/4,el, el);
    }
  }
  void show()
  {
    int rectSize = 100;
    noStroke();
    fill(255);
    rect(myX,myY,rectSize,rectSize);
  }
}
