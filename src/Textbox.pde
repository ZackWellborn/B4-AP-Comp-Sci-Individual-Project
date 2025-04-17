//thing
class Textbox {
 int x,y,w,h;
 String text;
 boolean on;
 color c1;
 Textbox(int x, int y, int w, int h, String text) {
  this.x = x; 
  this.y = y;
  this.w = w;
  this.h = h;
  this.text = text;
  on = false;
  c1 = (color(#ffffff)); //filler
   
 }
 void display() {
   fill(c1);
   rect(x,y,w,h,8); 
   fill(12);
   text(text, x+5, y+(h/2)); 
 }
}
