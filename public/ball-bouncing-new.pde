/**
 * Bouncing Ball with Vectors 
 * 
 * Demonstration of using vectors to control motion 
 * of a body.
 */
 
PVector location1;  // Location of shape1
PVector velocity1;  // Velocity of shape1
PVector gravity1;   // Gravity acts at the shape1's acceleration
color color1;       // Color of shape1

PVector location2;  // Location of shape2
PVector velocity2;  // Velocity of shape2
PVector gravity2;   // Gravity acts at the shape2's acceleration
color color2;       // Color of shape2


void setup() {
  size(640,360);
  
  // Shape 1
  location1 = new PVector(100,100);
  velocity1 = new PVector(1.5,2.1);
  gravity1 = new PVector(0,0.2);
  color1 = color(243, 213, 91); // Yellow
  
  // Shape 2
  location2 = new PVector(200,200);
  velocity2 = new PVector(2.1,1.6);
  gravity2 = new PVector(0,0.4);
  color2 = color(118, 204, 230); // Skyblue
}


void draw() {
  background(0);
  
  // Add velocity to the location.
  location1.add(velocity1);
  // Add gravity to velocity
  velocity1.add(gravity1);
  
  // Bounce off edges
  if ((location1.x > width) || (location1.x < 0)) {
    velocity1.x = velocity1.x * -1;
  }
  
  if (location1.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity1.y = velocity1.y * -0.95; 
    location1.y = height;
  }

  // Display circle at location vector
  stroke(255);
  strokeWeight(2);
  fill(color1);
  ellipse(location1.x,location1.y,48,48);
  
  
  // Add velocity to the location.
  location2.add(velocity2);
  // Add gravity to velocity
  velocity2.add(gravity2);
  
  // Bounce off edges
  if ((location2.x > width) || (location2.x < 0)) {
    velocity2.x = velocity2.x * -1;
  }
  
  if (location2.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity2.y = velocity2.y * -0.95; 
    location2.y = height;
  }

  // Display circle at location vector
  stroke(255);
  strokeWeight(1);
  fill(color2);
  ellipse(location2.x,location2.y,24,24);
}