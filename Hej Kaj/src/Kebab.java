import processing.core.PApplet;
import processing.core.PImage;

public class Kebab extends PApplet {
    public static void main(String[] args){
        PApplet.main("kebab");
    }

    @Override
    public void settings() {
        super.settings();
        PImage map;
        float mapX, mapY;
//float mapScale = 1;
        float oldMX, oldMY;
        float oldMapX, oldMapY;


        void setup() {
            size(651, 576);
            map = loadImage("imk_kebab.png");
        }

        void draw(){
            clear();
            //scale(mapScale);
            image(map, mapX, mapY);
        }

        void mouseDragged(){
            mapX = (mouseX-oldMX+oldMapX);
            mapY = (mouseY-oldMY+oldMapY);
        }

        void mousePressed(){
            oldMapX = mapX;
            oldMapY = mapY;
            oldMX = mouseX;
            oldMY = mouseY;
        }

/*void keyPressed() {
 if (key=='e') {
 mapScale+=0.1;
 } else if (key=='q') {
 mapScale-=0.1;
 }
 }*/
    }
}
