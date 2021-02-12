
// studying monome grid and processing

// import libraries
import org.monome.*;
import oscP5.*;

// declare new Monome object
Monome grid;

// declare 2D array for led
int[][] led = new int[8][16];

boolean dirty;

void setup() {
  
  size(100, 100);
  
  frameRate(10);
  
  grid = new Monome(this);
  
  dirty = true;
  
}

void draw() {
  
  if (dirty) {
    grid.refresh(led);
    dirty = false;
  }
  
}

void key(int x, int y, int s) {
  led [y][x] = s * 15;
  dirty = true;
  System.out.println("grid key received: " + x + ", " + y + ", " + s);
}
