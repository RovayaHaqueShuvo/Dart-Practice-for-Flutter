void main(){
  print(getDistance(75,50));
}

num getDistance([totalDistance = 0, totalMinitues=0 ]){
  num s = totalDistance*1000;
  num t = totalMinitues*60;

  double distance = (s*3600)/ t;
  print(totalMinitues);
  return distance/1000;
}