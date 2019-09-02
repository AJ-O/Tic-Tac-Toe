class player
{
  Boolean f_or_not = false;
  int score;
  void create_square(float x, float y)
  {
    square(x, y, 200);
  }
}
player s1 = new player();
player s2 = new player();
player s3 = new player();
player s4 = new player();
player s5 = new player();
player s6 = new player();
player s7 = new player();
player s8 = new player();
player s9 = new player();
void setup()
{
  size(600, 600);
  background(0);
  s1.create_square(0, 0);
  s2.create_square(0, 200);
  s3.create_square(0, 400);
  s4.create_square(200, 0);
  s5.create_square(200, 200);
  s6.create_square(200, 400);
  s7.create_square(400, 0);
  s8.create_square(400, 200);
  s9.create_square(400, 400);
}
float start = 1;
float scorex = 0;
float scoreo = 0;
void draw()
{
    
}
void mouseReleased()
{
  if(start < 10)
  {
    if(start%2 == 0)
    {
      drawX(mouseX, mouseY);
      if(testscore() == true)
      {
        print("X wins");
        fill(0, 0, 255);
        text("X wins", width/2, height/2);
        delay(100);
        exit();  
      }
      start++;
    }
    else
    {
      drawO(mouseX, mouseY);
      if(testscore() == true)
      {
        print("O wins");
        fill(0, 0, 255);
        text("O wins", width/2, height/2);
        delay(100);
        exit();
      }
      start++;
    } 
  }
  else if(start >= 10)
  {
    System.out.println("No more chances \n");  
  }
}
Boolean testscore()
{
  Boolean res = false;
  if(scorex == 306 || scorex == 315 || scorex == 324 || scorex == 312 || scorex == 318)
  {
    res = true;
  }
  if(scoreo == 9 || scoreo == 18 || scoreo == 27 || scoreo == 15 || scoreo == 21)
  {
    res = true;
  }
  return res;
}
int drawX(float xcor, float ycor)
{
    if((xcor >=0 && xcor <=200) && (ycor >= 0 && ycor <= 200))
    {
      if(s1.f_or_not == false)
      {
        strokeWeight(10);
        line(45, 45, 135, 135);
        line(135, 45, 45, 135);
        s1.f_or_not = true;
        s1.score = 1;
        scorex = s1.score + scorex + 100;
      }
      else
         start--;
    }
    else if((xcor >= 200 && xcor <=400) && (ycor >= 0 && ycor <= 200))
    {
      if(s2.f_or_not == false)
      {
        strokeWeight(10);
        line(245, 45, 335, 135);
        line(335, 45, 245, 135);
        s2.f_or_not = true;
        s2.score = 2;
        scorex = s2.score + scorex + 100;
      }
      else
        start--;
    }
    else if((xcor >= 400 && xcor <=600) && (ycor >= 0 && ycor <= 200))
    {
      if(s3.f_or_not == false)
      {
        strokeWeight(10);
        line(445, 45, 535, 135);
        line(535, 45, 445, 135);
        s3.f_or_not = true;
        s3.score = 3;
        scorex = s3.score + scorex + 100;
      }
      else
        start--;
    }
    else if((xcor >= 0 && xcor <= 200) && (ycor >= 200 && ycor <= 400))
    {
      if(s4.f_or_not == false)
      {
        strokeWeight(10);
        line(45, 245, 135, 335);
        line(135, 245, 45, 335);
        s4.f_or_not = true;
        s4.score = 4;
        scorex = s4.score + scorex + 100;
      }
      else
        start--;
    }
    else if((xcor >= 200 && xcor <= 400) && (ycor >= 200 && ycor <= 400))
    {
      if(s5.f_or_not == false)
      {
        strokeWeight(10);
        line(245, 245, 335, 335);
        line(335, 245, 245, 335);
        s5.f_or_not = true;
        s5.score = 5;
        scorex = s5.score + scorex + 100;
      }
      else
        start--;
    }
    else if((xcor >= 400 && xcor <= 600) && (ycor >= 200 && ycor <= 400))
    {
      if(s6.f_or_not == false)
      {
        strokeWeight(10);
        line(445, 245, 535, 335);
        line(535, 245, 435, 335);
        s6.f_or_not = true;
        s6.score = 6;
        scorex = s6.score + scorex + 100;
      }
    }
    else if((xcor >= 0 && xcor <= 200) && (ycor >= 400 && ycor <= 600))
    {
      if(s7.f_or_not == false)
      {
        strokeWeight(10);
        line(45, 445, 135, 535);
        line(135, 445, 45, 535);
        s7.f_or_not = true;
        s7.score = 7;
        scorex = s7.score + scorex + 100;
      }
    }
    else if((xcor >= 200 && xcor <= 400) && (ycor >= 400 && ycor <= 600))
    {
      if(s8.f_or_not == false)
      {
        strokeWeight(10);
        line(245, 445, 335, 535);
        line(335, 445, 245, 535);
        s8.f_or_not = true;
        s8.score = 8;
        scorex = s8.score + scorex + 100;
      }
    }
    else if((xcor >= 400 && xcor <= 600) && (ycor >= 400 && ycor <= 600))
    {
      if(s9.f_or_not == false)
      {
        strokeWeight(10);
        line(445, 445, 535, 535);
        line(535, 445, 445, 535);
        s9.f_or_not = true;
        s9.score = 9;
        scorex = s9.score + scorex + 100;
      }
    }
    
  return 1;
}
int drawO(float xcor, float ycor)
{
    if((xcor >=0 && xcor <=200) && (ycor >= 0 && ycor <= 200))
    {
      if(s1.f_or_not == false)
      {
        strokeWeight(10);
        circle(100, 100, 100);
        s1.f_or_not = true;
        s1.score = 1;
        scoreo = s1.score + scoreo + 1;
      }
      else
        start--;
    }
    else if((xcor >= 200 && xcor <=400) && (ycor >= 0 && ycor <= 200))
    {
      if(s2.f_or_not == false)
      {
        strokeWeight(10);
        circle(300, 100, 100);
        s2.f_or_not = true;
        s2.score = 2;
        scoreo = s2.score + scoreo + 1;  
      }
      else
        start--;
    }
    else if((xcor >= 400 && xcor <=600) && (ycor >= 0 && ycor <= 200))
    {
      if(s3.f_or_not == false)
      {
        strokeWeight(10);
        circle(500, 100, 100);
        s3.f_or_not = true;
        s3.score = 3;
        scoreo = s3.score + scoreo + 1;  
      }
      else
        start--;
    }
    else if((xcor >= 0 && xcor <= 200) && (ycor >= 200 && ycor <= 400))
    {
      if(s4.f_or_not == false)
      {
        strokeWeight(10);
        circle(100, 300, 100);
        s4.f_or_not = true;
        s4.score = 4;
        scoreo = s4.score + scoreo + 1;  
      }
      else
        start--;
    }
    else if((xcor >= 200 && xcor <= 400) && (ycor >= 200 && ycor <= 400))
    {
      if(s5.f_or_not == false)
      {
        strokeWeight(10);
        circle(300, 300, 100);
        s5.f_or_not = true;
        s5.score = 5;
        scoreo = s5.score + scoreo + 1;
      }
      else
        start--;
    }
    else if((xcor >= 400 && xcor <= 600) && (ycor >= 200 && ycor <= 400))
    {
      if(s6.f_or_not == false)
      {
        strokeWeight(10);
        circle(500, 300, 100);
        s6.f_or_not = true;
        s6.score = 6;
        scoreo = s6.score + scoreo + 1;
      }
      else
        start--;
    }
    else if((xcor >= 0 && xcor <= 200) && (ycor >= 400 && ycor <= 600))
    {
      if(s7.f_or_not == false)
      {
        strokeWeight(10);
        circle(100, 500, 100);
        s7.f_or_not = true;
        s7.score = 7;
        scoreo = s7.score + scoreo + 1;  
      }
      else
        start--;
    }
    else if((xcor >= 200 && xcor <= 400) && (ycor >= 400 && ycor <= 600))
    {
      if(s8.f_or_not == false)
      {
        strokeWeight(10);
        circle(300, 500, 100);
        s8.f_or_not = true;
        s8.score = 8;
        scoreo = s8.score + scoreo + 1;
      }
      else
        start--;
    }
    else if((xcor >= 400 && xcor <= 600) && (ycor >= 400 && ycor <= 600))
    {
      if(s9.f_or_not == false)
      {
        strokeWeight(10);
        circle(500, 500, 100);
        s9.f_or_not = true;
        s9.score = 9;
        scoreo = s9.score + scoreo + 1;
      }
      else
        start--;
    }
    return 2;
}
