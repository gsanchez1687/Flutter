void main(){
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['Impostor'];
  final sprites = <String>['ditto/font.png','ditto/back.png'];
  
  
  //puede ser cualquier valor, parecido o igual a  PHP
  dynamic errorMessage = "hola";
  
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
  
}