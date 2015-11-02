//declare variables array=list
int count=2;
float [] x = new float [count];
float [] y = new float [count];
float [] velx = new float [count];
float [] vely = new float [count];
float [] diam = new float [count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  y[0]= height/2;
  diam[0] = 80;
  velx[0]= random(-5, 5);
  vely[0] = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);

  //add velocity[0] to position
  x[0] += velx[0];
  y[0] += vely[0];

  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velx[0] = -abs(velx[0]);    //if the ball hits the right wall, assign x[0] velocity[0] the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velx[0] = abs(velx[0]);     //if the ball hits the left wall, assign x[0] velocity[0] the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    vely[0] = -abs(vely[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    vely[0] = abs(vely[0]);
  }
}