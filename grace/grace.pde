
//well at least this one's gonna be on time eh
//its got that going for it
//the lack of tardiness should be counted as an exclusive feature
//-------------
//well well! breakout
//i hope that's short for "break out of the miserable monotony of school"
//but alas! a quarter more to go
//that's not too bad is it
//actually its pretty bad if i think about it
//so im not going to
//(thats a lie)
//-------------
//i know this project and my last one are a bit on the simple side
//but it is almost midnight and im on my last neuron
//so forgive me as i
//spill across these lines
//one last
//time


//modes, like the modes of existence
int mode;
final int open = 1;
final int yes = 2;
final int stop = 3;
final int die = 4;
final int win = 5;

Boolean leftkey, rightkey;
float padx, pady, ballx, bally, balldi, vx, vy, timer;
int lives, colour;

color light = #59E3DF;
color medium = #49B9B7;
color dark = #2C7472;

//rick and mortar
int[] x;
int[] y;
boolean[] alive;
int bricked, n, tempx, tempy, score;

void setup() {
  size(900, 600, FX2D);
  mode = open;

  padx = width/2;
  pady = height;
  ballx = width/2;
  bally = height*2/3;
  balldi = 25;
  vx = random(2, -2);
  vy = 2;
  timer = 0;
  lives = 3;

  rightkey = false;
  leftkey = false;

  n = 18;
  bricked = 50;
  x = new int[n];
  y = new int[n];
  tempx = 200;
  tempy = 100;
  alive = new boolean[n];
  score = 0;

  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width-100) {
      tempx = 200;
      tempy = tempy + 100;
    }
    i=i+1;
  }
}

void draw() {
  if (mode == open) {
    open();
  } else if (mode == yes) {
    yes();
  } else if (mode == stop) {
    pause();
  } else if (mode ==die) {
    int i = 0;
    die(i);
  } else if (mode == win) {
    win();
  } else {
    println("idiot. imbecile. why is your frickin mode "+mode);
  }
}
