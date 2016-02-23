
void settings() { 
  size(400, 800, P2D);
}
void setup() {
    background(255, 200, 0);
  noLoop(); 
}
void draw() { 
  
  plant(15, 0.4, 0.8);
}
void leaf() {
      beginShape();
        vertex(100.0, -70.0);
        bezierVertex(90.0, -60.0, 40.0, -100.0, 0.0, 0.0);
        bezierVertex(0.0, 0.0, 100.0, 40.0, 100.0, -70.0);
      endShape();
    }
void plant(int numLeaves, float minLeafScale, float maxLeafScale) { 
  stroke(255);
  line(width/2, 0, width/2, height); // the plant's stem
  int gap = height/numLeaves; // vertical spacing between leaves 
  float angle = 0;
  for (int i=0; i<numLeaves; i++) {
    int x = width/2;
    int y = gap*i + (int)random(gap);
    float scale = random(minLeafScale, maxLeafScale);
    float r= random(0,255);
    float g= random(0,255);
    float b=random(0,255);
    
    pushMatrix();
    translate(x,y);
    rotate(angle);
    scale(scale);
    noStroke();
    fill(r,g,b);
    leaf();
    popMatrix();
    angle += PI; // alternate the side for each leaf

    } 
}