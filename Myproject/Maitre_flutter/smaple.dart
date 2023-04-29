//there are 5 types of condtional statements are there
/*
1)simple if 
2) if else 
3) else if leadder
4) nested if
5) switch
*/

//simple if
import 'dart:io';

void main() {
  var a;
  var b;
  print("Enter the value for a: ");
  a = int.parse(stdin.readLineSync()!);
  print("Enter the value for b: ");
  b = int.parse(stdin.readLineSync()!);
  if (a > b) {
    print("The condtion is true");
  } else {
    print("This is wrong  condtion");
  }
}
