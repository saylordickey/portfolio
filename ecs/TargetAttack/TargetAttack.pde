int xPos;                      //Position of the ball
int speed=1;                   //How fast is it moving?
int xDir=1;                    //what direction is the ball going?
int score=0;                   //Inital score
int lives=5;                   //Number of lives you start with
boolean play;            //Have you lost yet?

void setup()                   //Runs once when program launches
{
  size (400, 400);
  smooth();
  xPos=width/2;
  fill(0, 255, 0);
  textSize(13);
  play=false;
}

void draw()
{
  if (play == false) {
    startScreen();
  } else {
    background (0);
    ellipse(xPos, height/2, 40, 40);
    xPos=xPos+(speed*xDir);
    if (xPos > width-20 || xPos<20)
    {
      xDir=-xDir;
    }
    text("score = "+score, 10, 10);
    text("lives = "+lives, width-80, 10);
    if (lives<=0)
    {
      gameOver();
      //textSize(20);
      //text("Click to Restart", 125, 100);
      //noLoop();                                    //Stop looping at the end of the draw function
      ////lost=true;
      //textSize(13);
    }
  }
}
void mousePressed()                              //Runs whenever the mouse is pressed
{
  if (dist(mouseX, mouseY, xPos, 200)<=20)      //Did we hit the target?
  {
    score=score+speed;                           //Increase the speed
    speed=speed+1;                               //Increase the Score
  } else                                           //We missed
  {
    if (speed<1)                                 //If speed is greater than 1 decrease the speed
    {
      speed=speed-1;
    }
    lives=lives-1;                               //Take away one life
  }
  //if (lost==true)                                //If we lost the game, reset now and start over
  //{
  //  speed=1;                                     //Reset all variables to initial conditions
  //  lives=5;
  //  score=0;
  //  xPos=width/2;
  //  xDir=1;
  //  //lost=false;
  //  loop();                                     //Begin looping draw function again
  //}
}
void keyPressed() {
  if (key == ' ') {
    play = true;
  }
}
void startScreen() {
  background(0);
  fill(255);
  text("Target Attack", width/2, height/2);
  text("By Saylor Dickey", width/2, height/2+30);
  text("Press space to start", width/2, height/2+60);
}

void gameOver() {
  background(0);
  fill(255);
  text("Game Over", width/2, height/2);
  text("Score" + score, width/2, height/2+30);
  noLoop();
}
