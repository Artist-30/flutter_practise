
import 'dart:io';

void main(){

  // Lec: 19-20
  print("Hello World!");
  print("");
  /* Start

  stdout.write("Enter your Name : ");
  var name = stdin.readLineSync();

  stdout.write("Enter your Surname : ");
  var surname = stdin.readLineSync();

//   call student details class
  StudDetails(name, surname);

   End */

  // Lec: 21
  /* Start

  int? a;
  a = 1;
  print(a);

  a = 3;
  print(a);

//   Inline declaration
  String name = "Artist";
  print(name);

//   for bigger int value
  BigInt longInteger = BigInt.parse('645123546852314585');
  print(longInteger);

//   float value 'num' and 'double'
  double per = 99.99;
  num percentage = 85.85;     //  num store both int and float value
  print(percentage);
  print(per);

  bool isLogin = true;
  print(isLogin);

   End */

//   Lec: 22
  /* Start

  String name = "Artist";

  var rollno = 11;
  // rollno = '14';
  print(rollno);

  // This is dynamic type
  var randomValue;
  randomValue = "Artist";
  randomValue = 38;
  randomValue = true;
  print(randomValue);
  print("");

//   Dynamic type
  dynamic random = 30;
  random = "ABCD";
  print(random);

  End */

//   Lec: 23
  /* Start

  dynamic name = stdin.readLineSync();

  var myC = myClass();

  myC.printName(name);
  myC.printName("Artist");

  var sum = myC.add(5, 3);
  print(sum);

  End */

//   Lec: 24
  /* Start
  var randomVal = [10, 20, 30, 40, 50];
  randomVal.add(60);
  print("$randomVal");

  var names = [];
  names.add("Artist");
  print("$names");

  names.addAll(randomVal);
  print("$names");
  
  names.insert(5, "Dhrumil");
  print("$names");

  names[2] = "Aniket";
  print("$names");

  names.insertAll(7, randomVal);
  print("$names");

  names.replaceRange(7, 13, ["7 to 13 index value"]);
  print("$names");

  print(names.length);
  print(names.reversed);
  print(names.first);
  print(names.last);
  print(names.isEmpty);
  print(names.isNotEmpty);
  print(names.elementAt(3));

  print("$names");
  print(names.removeLast());
  print(names.removeAt(3));
  names.removeRange(0, 5);
  print("$names");
  print(names.remove);

  End */

//   Lec:25
  /* Start

  var map_name = {
    "Key1" : "Val1",
    "Key2" : 2,
    "Key3" : 3.0,
    "Key4" : true,
  };

  print(map_name);
  map_name["Key3"] = "Value6";
  print(map_name);

  var mapName = Map();
  print(mapName);

  mapName["Key9"] = "Val9";
  mapName["Key8"] = 8;
  mapName["Key7"] = 7.0;
  print(mapName);

  print(mapName.isEmpty);
  print(mapName.isNotEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey("Key8"));
  print(mapName.containsValue(7.0));
  print(mapName.remove("Key8"));
  print(mapName);
  
  End */

//   Lec: 26
  /* Start

  final name = "Artist";  // in final variable name can't reuse but values can change
  print(name);

  final names = [
    "Brijesh",
    "Dhrumil",
    "Smit"
  ];
  print(names);

  names.add("Vishw");
  print(names);
  names.remove("Brijesh");
  print(names);

  const value = 10;       //  in const variable name can't reuse and values can't change
  print(value);

  const values = [
    100,200,300,400,500
  ];
  print(values);
  // values.add(1000);
  // print(values);

  End */

//   Lec: 27

  /* Start

  var a = 100;
  var b = 5;

  if(a > 500 && b < 100) {
    print("Block 1");
  }
  else if(a > 50 && b > 25) {
    print("Block 2");
  }
  else if(a > 500 || b >= 5 ) {
    print("Block 3");
  }
  else {
    print("Block Else");
  }

  End */

//   Lec: 28
  /* Start

  int i;

  // Entry control loop
  for(i=1; i<=5; i++) {
    print("Hello World! from for loop - ($i)");
  }

  while(i<=10) {
    print("Hello World! from while loop - ($i)");
    i++;
  }

  // Exit Control loop
  do {
    print("Hello World! from do-while loop - ($i)");
    i++;
  }while(i<=15);

  End */

}

class StudDetails {
  StudDetails(name, surname) {
    stdout.write("Welcome, $name $surname.\nI hope you're doing well.");
  }
}

// Lec: 23
class myClass{

  void printName(String name) {     // for without returning a value
    print("Welcome back, $name");
  }

  int add(int no1, int no2) {       // for returning a value
    return no1 + no2;
  }
}
