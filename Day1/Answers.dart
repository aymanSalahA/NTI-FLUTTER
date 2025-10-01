import 'dart:io';

// Q 1
void q1() {
  String name = "Ayman Salah";
  int age = 30;
  String gender = "Male";
  String favColor = "White";
  double height = 183.6;
  bool amIStudent = false;
  print("""
  Here is my Data : 
  My name is $name and I am $age Years old , my Fav Color is $favColor , 
  I am a $gender with Height $height . 
  Am I student ? Answer is : $amIStudent . 
""");
}

// Q 2
void q2() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
  stdout.write('Enter your age: ');
  String? age = stdin.readLineSync();
  print('Hello, $name , your age is $age');
}

// Q 3
void q3() {
  var someValue = "Ayman"; // String
  dynamic anotherValue = "Ayman"; // String too

  //  someValue  = 4 ; // ERROR , Var is dynamics for the FIRST assign ONLY
  anotherValue =
      4; // CORRECT , dynamic remains Dynamics to assgin to different types , not only once

  print("""
   Var is dynamics for the FIRST assign ONLY  , 
   dynamic remains Dynamics to assgin to different types , not only once
""");
}

// Q 4
void q4() {
  // const DateTime constTime = new DateTime.now();  // ERROR
  // final DateTime finalTime = new DateTime.now(); // CORRECT
  // print(constTime);
  // print(finalTime);
  print("""
  const -> value remain constant , assignmet happen at CompileTime (while you are coding),this is why it raise error with new DateTime.now();
  It keeps assiging new Value ( not constant ) all time while you are coding 
  
  final -> value remain constant , assignmet happen at Runtime (when you click RUN), this is why it accept new DateTime.now();  without issue
""");
}

// Q 5
void q5() {
  List listOfThings = ["ayman", 14.5, 34, false];
  Map mapOfThings = {"name": "ayman", true: "yes", "height": 143.3};
  Set setOfThings = {5, 3, 2}; //
  print("""
  Here are some list facts : list length = ${listOfThings.length} , First Item : ${listOfThings.first} , 
  Some set facts : First item : ${setOfThings.first}  , last Item : ${setOfThings.last} , 
  For the map : Keys :  ${mapOfThings.keys} ,Values : ${mapOfThings.values}
""");
}

// Q 6
void q6() {
  List listOfThings = ["ayman", 14.5, 34, false];
  Map mapOfThings = {"name": "ayman", true: "yes", "height": 143.3};
  Set setOfThings = {5, 3, 2};

  print("""
  1- All of them are Collection of Items/Data 
  2- List , collection of things starting with index 0 
  3- set is same as List ,with no duplicate items 
  4- Map adds more feature by allowing keys to be ( in addition to numbers ) any other values 

  5- Map and Json look similar , But JSON ALWAYS need string keys , while Map can have any key even boolean as above 
""");
}

// Q 7
void q7() {
  for (int i = 0; i < 61; i++) {
    if (i.isEven) {
      print(i);
    }
  }
  //
  int ii = 0;
  while (ii < 61) {
    if (ii.isEven) {
      print(ii);
    }
    ii++;
  }
}

// Q 8
void q8() {
  double weight = 70.0;
  double height = 1.75;
  double bmi = weight / (height * height);
  switch (bmi) {
    case < 18.5:
      print('Underweight');
      break;
    case >= 18.5 && < 25:
      print('Normal weight');
      break;
    case >= 25 && < 30:
      print('Overweight');
      break;
    default:
      print('Unknown');
  }
}

// Q 9
void q9() {
  calculateWithIf();
}

void calculateWithIf() {
  double weight = 70.0;
  double height = 1.75;
  double bmi = weight / (height * height);
  if (bmi < 18.5) {
    print('underweight');
  } else if (bmi >= 18.5 && bmi < 25) {
    print('normal');
  } else if (bmi >= 25 && bmi < 30) {
    print('overweight');
  } else {
    print('over');
  }
}

// Q 10
void q10() {
  bool impossible = false;
  while (impossible) {
    print("I will never show");
  }

  do {
    print("Do While , makes the impossible,, possible");
  } while (impossible);
}

// Q 11
void q11() {
  int fixedFive = 5;
  for (var i = 0; i < 11; i++) {
    print("5 * ${i} = ${i * fixedFive}");
  }
}
