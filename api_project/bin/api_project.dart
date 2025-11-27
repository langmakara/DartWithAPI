import 'package:api_project/person.dart';
import 'dart:io';

void main(List<String> arguments) {
  // Create a Person instance
  var person = Person(
    'Momo',
    25,
    'male',
    address: '123 Main St',
    phoneNumber: '555-1234',
  );
  person.firstName = 'Makara';
  person.lastName = 'Lang';
  //print(person.getFullName());

  while (true) {
    print('Choose an option:');
    print('1. Get Full Name');
    print('2. Get Username');
    print('3. Get Info');
    print('4. Expense account');
    print('5. Exit');
    var choice = stdin.readLineSync();
    handleChoice(choice, person);
  }
}

void handleChoice(String? choice, Person person) {
  switch (choice) {
    case '1':
      print('Your Full Name : ${person.getFullName()}');
      break;
    case '2':
      print('Your Username : ${person.getUsername()}');
      break;
    case '3':
      print(person.getInfo());
      break;
    case '4':
      print('Expense account feature is not implemented yet.');
      break;
    case '5':
    case 'exit':
      exit(0);
    default:
      print('Invalid option');
  }
}
