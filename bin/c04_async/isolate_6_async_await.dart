import 'dart:io';

void main(List<String> arguments) {
  readFile().then((value) {
    print("readFile()");
  });

  readFile1((s) {
    print("readFile1()");
  });

  readFile0().then((value) {
    print("readFile0()");
  });

  print("main =====");
}

//async 只能返回Future或者void
Future<String> readFile() async {
  //异步代码，同步写
  //await 代码会阻塞,所以结合async,让readFile方法变成异步的
  var content = await File('bin/c04_async/test.json').readAsString();
  var content2 = await File('bin/c04_async/test222.json').readAsString();
  return content;
}

//非 async
void readFile1(void callback(String string)) {
  var future = File('bin/c04_async/test.json').readAsString();
  future.then((value) {
    callback(value);
  });
}

//非 async
Future<String> readFile0() {
  var future = File('bin/c04_async/test.json').readAsString();
  return future.then((value) {
    return value;
  });
}
