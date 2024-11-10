//Funciones con parametros

void main(){
  print(greatEveryone());
  print( addTwoNumber(10,20) );
  print(addTwoNumberFlecha(2,2));
}


//Funcion flecha
greatEveryone() => 'Hola a todos con flecha';

int addTwoNumber( int a, int b){
  return a + b;
}

//Funcion flecha
int addTwoNumberFlecha(int a,[int b = 0]){
  return a + b;
}