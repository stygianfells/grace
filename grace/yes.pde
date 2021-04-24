
void yes() {
  background(108, 42, 70);
  glob();
  poop();
  bricklayer();
  textFont(sketch);
  textSize(30);
  fill(255);
  textAlign(CENTER, CENTER);
  text("SCORE: "+score, width/4, 30);
  text("LIVES: "+lives, width*3/4, 30);
}

void glob() {
  strokeWeight(3);
  stroke(255);
  fill(231, 179, 250);
  circle(padx, pady, 125);
}

void poop() {
  fill(255);
  noStroke();

  circle(ballx, bally, balldi);
  timer = timer + 1;

  //println(timer);
  if (timer > 60 && lives >= 1) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  if (dist(ballx, bally, padx, pady) < balldi + 55) {
    vx = (ballx - padx)/20;
    vy = (bally - pady)/20;
  }
  if (bally < balldi/2) {
    vy = vy * -1;
  } else if (ballx < balldi/2 || ballx > width-balldi/2) {
    vx = vx * -1;
  }
  if (rightkey == true && padx < width-125/2) padx = padx + 4;
  else if (leftkey == true && padx > 125/2) padx = padx - 4;
  if (bally > height+balldi) {
    ballx = width/2;
    bally = height*2/3;
    lives = lives - 1;
    loselife.rewind();
    loselife.play();
    ballx = ballx + vx;
    bally = bally + vy;
  }
  if (lives == 0) {
    mode = die;
  } else if (lives > 0 && score == 18) {
    mode = win;
  }
}

void bricklayer() {
  strokeWeight(3);
  stroke(255);
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i = i + 1;
  }
}

void manageBrick(int i) {
  if (y[i] == 150) fill(light);
  if (y[i] == 250) fill (medium);
  if (y[i] == 350) fill (dark);
  circle(x[i], y[i], bricked);
  if (dist(ballx, bally, x[i], y[i]) < balldi + 17) {
    vx = (ballx - x[i])/15;
    vy = (bally - y[i])/15;
    alive[i] = false;
    score = score + 1;
    scores.rewind();
    scores.play();
  }
}
