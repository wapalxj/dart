
import 'dart:io';

void main(List<String> arguments) {
  readFile().then((value){
    print("readFile()");
  });
  print("readFile() 00000");
}

//async 只能返回Future
Future<String> readFile() async{
  //异步代码，同步写
  //await 代码会阻塞,所以结合async,让readFile方法变成异步的
  var content= await File('bin/c04_async/test.json').readAsString();
  var content2= await File('bin/c04_async/test222.json').readAsString();
  return content;
}