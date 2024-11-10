//name contructor

void main(){
  
  
  final ironman = Hero(isAlive:false, power:'Monery', name:'Tony Stark');
  
  print( ironman );
  
}

 class Hero{
   
   String name;
   String power;
   bool isAlive;
   
   Hero({
     required this.name,
     required this.power,
     required this.isAlive
   });
   
   @override
String toString(){
  return ' $name, $power, ${isAlive ? '!YES' : '!NO' } ';
}
   
 }