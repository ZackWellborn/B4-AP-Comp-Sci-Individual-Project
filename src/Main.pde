//test

//variables: 
int re = 6378; //earth radius
int rleo = 250 +re; //leo radius from center of earth; 250 is avg but maybe make this custom
int angle = 0; //angle between the locations of the planets
//note that distances of planets from the sun are measured in astronomical units (1.496e+8 km)
Textbox[] boxes = new Textbox[1];
  int[][] graph= new int[50][50]; //plot the
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
