

float tearX = 510;
float tearY = 650;

float tearSpeed = 2;

float z1 = 200;
float zSpeed = 2.5;
float z2 = 50;
void setup()
{
  size(800, 800);
}

void draw()
{

  background(0);

  //shirt
  fill(0, 80, 2);
  rect(0, 600, width, 250);
  //Head
  fill(255, 223, 183); // SkinColor
  ellipse(400, 400, 600, 600);
  //UnderEye
  fill(100);
  ellipse(250, 300, 100, 100);
  ellipse(width-250, 300, 100, 100);
  //eyes
  fill(255, 255, 255);
  ellipse(250, 300, 80, 80);
  ellipse(width-250, 300, 80, 80);
  //puples
  fill(0);
  ellipse(250, 300, 20, 20);
  ellipse(width-250, 300, 20, 20);

  //closed eyes
  fill(255, 223, 183);
  noStroke();
  rect(200, 250, 400, 50);
  stroke(0);

//Sleeping Zzzz's
  textSize(80);
  fill(255);
  text("Zz", 150+random(-4, 4), z1);
  text("Zz", 250+random(-4, 4), z2);
  z1 = z1 - zSpeed;
  if (z1 < 0 )
  {
    z1 = 200;
  }

  z2 = z2 - zSpeed;
  if (z2 < 0)
  {
    z2=200;
  }


  //Mouth
  fill(0);
  ellipse(400, 500, 300, 150);

  fill(255, 223, 183); // SkinColor
  noStroke();
  rect(250, 480, 310, 100);


  stroke(0);


  //TEAR CODE
  fill(0, 0, 255);
  noStroke();

  ellipse(tearX, tearY, 15, 30);
  ellipse(tearX, tearY+5, 50, 50);
  rect(tearX-5, 470, 25, tearY-470);

  tearY = tearY + tearSpeed;

  if (tearY > 800)
  {
    tearSpeed = -2;
  }
  if (tearY < 480)
  {
    tearSpeed = 2;
  }


  //ears
  fill(255, 223, 183); // SkinColor
  ellipse(110, 350, 80, 100);
  ellipse(width-110, 350, 80, 100);
 
 
 //text
  fill(255);
  text("Me right now", 100, 770);
}
