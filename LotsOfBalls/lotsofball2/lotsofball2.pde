//declare variables array=list
int count=2;
int i= 0;
float [] x = new float [count];
float [] y = new float [count];
float [] velx = new float [count];
float [] vely = new float [count];
float [] diam = new float [count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  while (i < count) {
    x[i] = width/2;
    y[i]= height/2;
    diam[i] = 80;
    velx[i]= random(-5, 5);
    vely[i] = random(-5, 5);
    i++;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  x[0] += velx[0];
  y[0] += vely[0];
  //add velocity[0] to position



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


  ellipse(x[1], y[1], diam[1], diam[1]);
  x[1] += velx[1];
  y[1] += vely[1];  
  diam[1]=40;

  if (x[1] + diam[1] >= width) {
    velx[1] = -abs(velx[1]);    //if the ball hits the right wall, assign x[0] velocity[0] the negative version of itself
  } else if (x[1] - diam[1] <= 0) {
    velx[1] = abs(velx[1]);     //if the ball hits the left wall, assign x[0] velocity[0] the positive version of itself
  }
  if (y[1] + diam[1] >= height) {
    vely[1] = -abs(vely[1]);
  } else if (y[1] - diam[1] <= 0) {
    vely[1] = abs(vely[1]);
  }
}