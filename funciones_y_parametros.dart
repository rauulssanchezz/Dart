void main(){

  print(greetEveryone());

  print('Suma: ${addTwoNumbers(5, 5)}');
  print('Suma opcional: ${addTwoNumbersOptional(5)}');
  print(greetPerson(name: 'Raúl'));

}

String greetEveryone() => 'Hello everyone'; 

int addTwoNumbers (int a, int b) => a + b;

int addTwoNumbersOptional (int a, [int b = 0]) {

  //b ??= 0;

  return  a + b;

}

String greetPerson({ required String name, String message ='Hola,'}) => '$message $name';