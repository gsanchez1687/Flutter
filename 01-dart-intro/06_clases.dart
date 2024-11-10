//clases

void main(){
  
  final Hero wolverine = Hero('Logan','Regeneracion');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}


class Hero{
  
  String name;
  String power;
  
  //Constructor
  Hero( this.name, this.power );
  
}

