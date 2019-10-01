
void game() {
  background(0);
  fill(255);
  rect(0, 0, width/2, height);
  color[]colors={red, orange, yellow, green, blue};
  String[]colorwords={"red", "orange", "yellow", "green", "blue"};
  colorwords[1]="red";
  colorwords[2]="orange";
  colorwords[3]="yellow";
  colorwords[4]="green";
  colorwords[0]="blue";

  colors[1]=red;
  colors[2]=orange;
  colors[3]=yellow;
  colors[4]=green;
  colors[0]=blue;
  if (crng==rng) {
    good=true;
  }
  if (crng!=rng) {
    good=false;
  }
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(colors[crng]);
  text(colorwords[rng], width/2, height/2);
  fill(255);
  text(points, 725, 50);

  text("NO", 600, 550);
  fill(0);
  text("YES", 200, 550);
  println(coin);
if (coin==1&&good==true){
    good=true;
}else if(coin==0&&good==false){
 good=false; 
}

if(coin==0&&good==true){
 good=true; 
}
else{coin=1;}

  fill(0); 
  a=a-0.05;
  arc(50, 50, 80, 80, 0, TWO_PI+a, PIE);
  if (a<-6.5) {
    mode=gameover;
  }
}
void gameClicks() {
  if (mouseX>0&&mouseX<width/2&&mouseY>0&&mouseY<height) {
    if (good==true) {
      points=points+1;
      rng=int(random(0, 5)); 
      crng=int(random(0, 5));
      //coin=int(random(0, 2));
      a=0;
    } else if (good==false) {
      mode=gameover;
    }
  }
  if (mouseX>width/2&&mouseX<width&&mouseY>0&&mouseY<height) {
    if (good==false) {
      points=points+1;
      rng=int(random(0, 5)); 
      crng=int(random(0, 5));
      //coin=int(random(0, 2));
      a=0;
    } else if (good==true) {
      mode=gameover;
    }
  }
}
