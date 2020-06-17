class Shape {
  float xp, yp, size;
  Shape(float mx, float my) {
    xp=mx;
    yp=my;
    size=1;
  }

  void tree() {
    if (yp<width-50) {
      fill(210, 105, 30);
      ellipse(xp, yp, 10, 10);
      yp+=2;
    } else {
      shape(tree, xp-15, yp-110);
    }
    //Angående at scale former. Den scaler relativt til anchor-punktet, så lige nu ligner det bare at gud sender dem ned.
    //Man kan kun kontrollere hvor de lander, med translate kommandoen når vi konstruerer shapen, og det virker som det skal.
    //Man skal kigge ind i at ændre formens anhcor-punkt. (Det punkt der ligger midterst i det.)
  }

  void cloud() {
    xp++;

    fill(255, 250, 250);
    ellipse(xp, yp, 100, 50);

    if (xp>width+100) {
      size=random(0.9f, 1.1f);
      scale(size);
      xp=random(-600, -100);
      yp=random(100, 600);
    }
  }
}
