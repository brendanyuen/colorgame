void gameover(){
 background(255,0,0); 
 fill(0);
 textSize(30);
 text("POINTS:   "+points,width/2,200);
 text("HIGH SCORE:     "+highScore,width/2,height/2);
 if(points>=highScore){
  highScore=points; 
 }
 
}
