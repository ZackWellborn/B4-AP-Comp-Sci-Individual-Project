//PLAN:
//use a for loop for every value in graph and perform calcHT to set values to each of those indices
//for every value in graph, create a range from the highest to lowest (use sorting alg to find min/max?)
//assign the highest value to 0, lowest to 255, map all of the values to that range, 
//then use those values to make 50/50 grid of boxes, WITH a legend to identify which colors represent which delta-vs
//ALSO use a mouse hover function to display the delta v at each box in the graph
//graph will be like
//launch date and arrival date
// big question: calcHT will have to be run on 2500 values
//so Im going to have to get a tTime (transfer time) for every possible launch DATE
// no wait so have tTime and tLaunch be inputted


//test

//variables:  
//int re = 6378; //earth radius  --these two variables are only used for hohmann transfers from leo to geo which ew icky bad
//int rleo = 250 +re; //leo radius from center of earth; 250 is avg but maybe make this custom
int mu = 1.32712440041279419*10²⁰; //mu of sun ig
int angle = 0; //angle between the locations of the planets
int sma = 0; //semi-major axis of the hohmann transfer (we're considering all orbits to be circles for simplicity rn)
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

void calcHT(int r1, int r2, int tl, int tt) { //tl is launch date tt is transfer time
  sma = (r1+r2)/2;
  
  

}
//todo: 
// - find a way to use/get an api?? so that you can use
// - find a way to display stuff
// - make 2 different screens - how to control this? maybe dont do a case switch this time
