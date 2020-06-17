PShape tree, stamme, blade;

ArrayList <Shape> Trees = new ArrayList <Shape>();
ArrayList <Shape> Clouds = new ArrayList <Shape>();

//int harvest;

void setup() {
  //settings
  size(800, 800);
  noStroke();

  //tree shape
  tree = createShape(GROUP);

  stamme = createShape(RECT, 0, 0, 30, 120);
  stamme.setFill(color(255,228,196));
  stamme.setStroke(false);

  blade = createShape(ELLIPSE, 15, 0, 100, 70);
  blade.setFill(color(255,127,80));
  blade.setStroke(false);

  tree.addChild(stamme);
  tree.addChild(blade);

  //clouds generate
  for (int I = 0; I<3; I++) {
    Clouds.add(new Shape(random(-100, 600), random(100, 600)));
  }
}

void draw() {
  clear();
  background(176,224,230);

  //ground
  fill(100, 170, 30);
  rect(0, height-50, width, 50);
  //god
  fill(240, 240, 20);
  ellipse(10, 10, 300, 300);


  //shape management
  //Trees kunne blive sorteret efter deres y-koordinat, hvilket renderer dem i rigtig rækkefølge, så de der er længst væk ligger bagerst.
  for (Shape c : Clouds) {
    c.cloud();
  }
  for (Shape t : Trees) {
    t.tree();
  }



  //NPC BEHAVE (WIP)
  /*float f1 = random(0, 100);
   if (f1<0.5 && Trees.size()>=1) {
   Trees.remove(0);
   harvest++;
   }
   
   if (Trees.size()==0&&harvest>=5) {
   println("Gud har givet mennesket nok træer til at de nu kan bygge et hus...");
   harvest-=5;
   fill(210, 105, 30);
   rect(50,20,20,20);
   }*/
}


//den her tilføjer træ
void mouseClicked() {

  Trees.add(new Shape(mouseX, mouseY));
}
