// grid sliders
// each colum is a different slider

// import libraries
import org.monome.*;
import oscP5.*;

// use the grid as sliders for each column
// lower value is 0, higher value is 7
// each column is an independent slider

// when any key is pressed
// check column x
// if y is 

// declare new Monome object
Monome grid;

boolean isHorizontal = true;

int gridColumns = 16;
int gridRows = 8;

// declare 2D array for led
int[][] led = new int[gridRows][gridColumns];

int[] sliderValues = new int[gridColumns];

int minValue = 0;
int maxValue = 7;

int minLight = 0;
int maxLight = 5;

boolean isRefresh;

// setup() runs once at the beginning
void setup() {

  size(300, 300);

  frameRate(10);

  grid = new Monome(this);

  for (int row = 0; row < led.length; row++) {
    for (int column = 0; column < 16; column++) {
      if (row != 7) {
        led[row][column] = minLight;
      } else {
        led[row][column] = maxLight;
      }
      isRefresh = true;
    }
  }

  isRefresh = true;
  
  for (int i = 0; i < sliderValues.length; i++) {
    sliderValues[i] = 0;
  }
  
}

void draw() {
  
  // paint canvas with black background
  background(0);
  
  drawText();
  drawSliders();
  
  if (isRefresh) {
    grid.refresh(led);
    isRefresh = false;
  }
}

void drawText() {
  noStroke();
  fill(255);
  textAlign(LEFT);
  text("grid id: " + "asdf", 0.1*width, 0.05*height);
  text("isHorizontal: " + isHorizontal, 0.1*width, 0.10*height);
}

float marginLeft = 5.0/100.0 * width;
float sliderWidth = 5.0/100.0 * width;
float sliderSpacing = 10.0/100.0 * width;
float marginBottom = 5.0/100.0 * height;
float sliderDeltaY = 10.0/100.0 * height;

void drawSliders() {
  noStroke();
  fill(255);
  rectMode(CORNERS);
  for (int i = 0; i < sliderValues.length; i++) {
    // left lower corner, upper right corner
    rect(marginLeft + (sliderWidth + sliderSpacing)*i,
    height-marginBottom,
    marginLeft + sliderWidth + (sliderWidth + sliderSpacing)*i,
    height-marginBottom-sliderDeltaY*(1+sliderValues[i]));
  }
}


void key(int x, int y, int s) {
  if (s == 1) {

    // update slider values
    sliderValues[x] = gridRows - y - 1;

    // go through every row
    for (int row = 0; row < led.length; row++) {
      // turn on led for the current row and bigger y values
      if (row >= y) {
        led[row][x] = maxLight;
      }
      // turn off led for lesser values of row
      else {
        led[row][x] = minLight;
      }
    }

    isRefresh = true;
    System.out.println("grid key received: " + x + ", " + y + ", " + s);
  }

}

// press spacebar to reset to initial state
// initial state is all leds off, except for bottom row
void keyPressed() {
  if (key == ' ') {
    for (int row = 0; row < gridRows; row++) {
      for (int column = 0; column < gridColumns; column++) {
        if (row != 7) {
          led[row][column] = minLight;
          sliderValues[column] = 0;
        } else {
          led[row][column] = maxLight;
        }
        isRefresh = true;
      }
    }
  }
}
