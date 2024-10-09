import 'dart:io';

String returnInput(String txt){
  print(txt);
  return stdin.readLineSync().toString();
}