float e1x = 200; // x Location of 1st ellipse
float e1y = 200; // y Location of 1st ellipse
float e1speed = 0; // Speed of 1st ellipse
float e1gravity = 0.1; // Gravity of 1st ellipse

float e2x = 134;
float e2y = 200;
float e2speed = 0;
float e2gravity = 1.5;

float e3x = 68;
float e3y = 200;
float e3speed = 0;
float e3gravity = 0.9;

float e4x = 266;
float e4y = 200;
float e4speed = 0;
float e4gravity = 0.4;

float e5x = 332;
float e5y = 200;
float e5speed = 0;
float e5gravity = 2.0;

boolean drop = false;

int trir = 255; // Triangle's red
int trig = 114; // Triangle's green
int trib = 240; // Triangle's blue

float qy1 = 0; // Quad's top corner y
float qx1 = 400; // Quad's right corner x
float qy2 = 400; // Quad's bottom corner y
float qx2 = 0; // Quad's left corner x

void setup() {
  size(400, 400); //Sets the size of the window
  background(198); //Sets the color of the background
  frameRate(30); // Sets the framerate
  smooth(); //Sets anti-aliasing
  rectMode(CENTER); //Sets origin point of rectangles to center
}

void draw() {
  //Drawing quad
  fill(131, 234, 95); //Fills with color / Lawn Green
  noStroke(); //No Stroke
  quad(200, qy1, qx1, 200, 200, qy2, qx2, 200); //Draws quad
  
  if (mousePressed == false) { // Changes quad's shape randomly
    qy1 = random(0, 200.1);
    qx1 = random(200, 400.1);
    qy2 = random(200, 400.1);
    qx2 = random(0, 200.1);
  }
  

  //Drawing triangle
  fill(trir, trig, trib); //Ultra Pink
  stroke(251, 43, 136); //Sets stroke color / Wild Strawberry
  strokeWeight(4); //Sets stroke thickness
  triangle(200, 1, 399, 399, 1, 399); //Draws triangle

  if (mousePressed == true) {
    if (trir == 255) { // Rotates through the triangle's red
      for (trir = 255; trir > 0; trir = trir - 1);
    } else if (trir == 0) {
      for (trir = 0; trir < 255; trir = trir + 1);
    } else {
      trir = trir + 1;
    }

    if (trig == 255) {
      for (trig = 255; trig > 0; trig = trig - 1);
    } else if (trig == 0) {
      for (trig = 0; trig < 255; trig = trig + 1);
    } else {
      trig = trig + 1;
    }

    if (trib == 255) {
      for (trib = 255; trib > 0; trib = trib - 1);
    } else if (trib == 0) {
      for (trib = 0; trib < 255; trib = trib + 1);
    } else {
      trib = trib + 1;
    }
  }

  //Drawing rectangle
  fill(32, 222, 189); //Turquoise
  stroke(32, 162, 222); //Summer Sky
  strokeWeight(4);
  rect(200, 200, 398, 100); //Draws rectangle (in center mode)

  //Drawing line
  stroke(230, 237, 26); //Golden Fizz
  strokeWeight(4);
  line(1, 1, 399, 399); //Draws line

  //Drawing ellipses
  fill(0, 246, 255);
  noStroke();
  ellipse(e1x, e1y, 96, 96); //Draws ellipse
  if (drop == true) { 
    e1y = e1y + e1speed; // Gives ellipse speed
    e1speed = e1speed + e1gravity; // Adds the gravity and speed
    if (e1y > height) {
      e1speed = e1speed * -0.95; // Creates realistic bounce
    }
  }

  ellipse(e2x, e2y, 96, 96);
  if (drop == true) { 
    e2y = e2y + e2speed;
    e2speed = e2speed + e2gravity;
    if (e2y > height) {
      e2speed = e2speed * -0.95;
    }
  }

  ellipse(e3x, e3y, 96, 96);
  if (drop == true) { 
    e3y = e3y + e3speed;
    e3speed = e3speed + e3gravity;
    if (e3y > height) {
      e3speed = e3speed * -0.95;
    }
  }

  ellipse(e4x, e4y, 96, 96);
  if (drop == true) { 
    e4y = e4y + e4speed;
    e4speed = e4speed + e4gravity;
    if (e4y > height) {
      e4speed = e4speed * -0.95;
    }
  }

  ellipse(e5x, e5y, 96, 96);
  if (drop == true) { 
    e5y = e5y + e5speed;
    e5speed = e5speed + e5gravity;
    if (e5y > height) {
      e5speed = e5speed * -0.95;
    }

    if (mousePressed == true) {
      e1y = e1y - 5;
      e2y = e2y - 5;
      e3y = e3y - 5;
      e4y = e4y - 5;
      e5y = e5y - 5;
    }
  }
}

void mousePressed() {
  drop = true;
}