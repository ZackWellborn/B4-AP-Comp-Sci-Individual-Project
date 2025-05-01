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
//ok wrong vvvvvvv wrong tTime cannot be modified and tweaked its set based on the transfer - the date
// no wait so have tTime and tLaunch be inputted


//test

//variables:
//int re = 6378; //earth radius  --these two variables are only used for hohmann transfers from leo to geo which ew icky bad
//int rleo = 250 +re; //leo radius from center of earth; 250 is avg but maybe make this custom
long mu = 1327124400*100000000; //mu of sun ig
float angle = 0; //angle between the locations of the planets
float sma = 0; //semi-major axis of the hohmann transfer (we're considering all orbits to be circles for simplicity rn
float tTime = 0;
float avTarget = 0;
float v1, v2, vTransfer1, vTransfer2, dv1, dv2, dTot;
float rmar = 1.52;
float au = (1.496*pow(10, 8));

//note that distances of planets from the sun are measured in astronomical units (1.496e+8 km)
//so uh. im going to  just place the planets at 45 90 135 180 225 270 315 360 degrees im kinda done
Textbox[] boxes = new Textbox[1];
int[][] graph= new int[50][50]; //plot the delta v with respect to i
void setup() {
  size(500, 500);
  background(0);
  boxes[0] = new Textbox(width/2, height/2, 100, 50, "hai");
  println("ok");
  try {
  print(calcHT(1.0, 1.54, 20));
  } catch(Exception e) {
   println("erm..."); 
  }
  println("ok");
}

void draw() {
  for (int i=0; i<boxes.length; i++) {
    boxes[i].display();
  }
}

//ok so i was doing all of this wrong i am now using the ai overview from google becuase the other one was wrong and weird :)
float calcHT(float r1, float r2, float tl) { //tl is launch date tt is transfer time
  r1 *=au;
  r2 *=au;
  sma = (r1+r2)/2;
  v1 = sqrt(mu/r1);
  vTransfer1 = sqrt((2*mu)/r1 - mu/sma);
  dv1 = vTransfer1-v1;
  v2 = sqrt(mu/r2);
  vTransfer2 = sqrt((2*mu)/r2 - mu/sma);
  dv2 = v2 - vTransfer2;
  dTot = dv1+dv2;
  println(mu);
  println(r1);
  println(r2);
  return dTot; //yuhhhhh
  //tTime = 2*pi*sqrt((sma^3)/mu); //transfer time
  //avTarget = ((360)/(2*pi))*sqrt((mu)/(r2^3)); //this is VERY questionable math but ill go with it - angular velocity of target
}
//todo:
// - find a way to use/get an api?? so that you can use
// - find a way to display stuff
// - make 2 different screens - how to control this? maybe dont do a case switch this time
