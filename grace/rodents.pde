
void mouseReleased() {
  if (mode == open) mode = yes;
  else if (mode == yes) mode = stop;
  else if (mode == stop) mode = yes;
  else if (mode == die || mode == win) mode = open;
}

void keyPressed() {
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
}

void keyReleased() {
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
}
