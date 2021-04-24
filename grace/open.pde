
void open(int i) {
  theme.play();
  background(108, 42, 70);
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == frames) f = 0;
  
  lives = 3;
  score = 0;
  while (i<n) {
    alive[i]=true; 
    i=i+1;
  }
  padx = width/2;
  ballx = width/2;
  bally = height*2/3;
  
  textAlign(CENTER, CENTER);
  textFont(sketch);
  textSize(160);
  text("BREAKOUT", width/2, 200);
  textSize(30);
  text("click to play!", width/2, 350);
}
