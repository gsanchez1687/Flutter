//@override
//ventajas del override?
//1. se puede usar el override para sobreescribir el toString
//2. se puede usar el override para sobreescribir el hashCode
//3. se puede usar el override para sobreescribir el ==
//4. se puede usar el override para sobreescribir el ==
//es bien comun el override?
//siempre
//que es un override?
//sobreescribir un metodo de la clase padre

void main(){
  
  final Hero wolverine = Hero(name: 'Logan', power:'Regeneracion' );
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}


class Hero{
  
  String name;
  String power;
  
  //Constructor pasando nombres requeridos
  Hero( { required this.name, required this.power} );
  
  @override
  String toString(){
    return '$name - $power';
  }
  
}