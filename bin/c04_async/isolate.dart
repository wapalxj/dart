import 'dart:io';
import 'dart:isolate';

void main(List<String> arguments) {
  Isolate.spawn(entryPoint, "vero");
  print("main");

  sleep(Duration(seconds: 10));
}

void entryPoint(String msg) {
  sleep(Duration(seconds: 5));
  print("entryPoint");
}
