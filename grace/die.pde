
void die(int i) {
  background(200);
  fill(255);
  text("YOU LOSE!", width/2, 200);
  lives = 3;
  score = 0;
  alive[i] = true;
}
