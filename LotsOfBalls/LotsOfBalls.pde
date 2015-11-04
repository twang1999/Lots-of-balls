
//declare variables array=list
int count=450;
float [] x = new float [count];
float [] y = new float [count];
float [] velx = new float [count];
float [] vely = new float [count];
float [] diam = new float [count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for (int i=0;i < count;i++) {
    x[i] = width/2;
    y[i]= height/2;
    diam[i] = random(80);
    velx[i]= random(-5, 5);
    vely[i] = random(-5, 5);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  //draw ball
  for (int i=0;i<count;i++) {
    fill(random(255),random(255),random(255));
    ellipse(x[i], y[i], diam[i], diam[i]);
    x[i] += velx[i];
    y[i] += vely[i];
    //add velocity[0] to position



    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velx[i] = -abs(velx[i]);    //if the ball hits the right wall, assign x[0] velocity[0] the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velx[i] = abs(velx[i]);     //if the ball hits the left wall, assign x[0] velocity[0] the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      vely[i] = -abs(vely[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      vely[i] = abs(vely[i]);
    }
  }
}