//test
  Textbox[] boxes = new Textbox[1];

void setup() {
 size(500,500); 
 background(0); 
 boxes[0] = new Textbox(width/2, height/2, 100, 50, "hai");
}

void draw() {
  for (int i=0; i<boxes.length; i++) {
    boxes[i].display();
    
  }
  
}

//todo: 
// - find a way to use/get an api?? so that you can use
// - find a way to display stuff
// - make 2 different screens - how to control this? maybe dont do a case switch this time
