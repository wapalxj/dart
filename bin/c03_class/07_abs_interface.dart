
void main(List<String> arguments) {

  var test=Test();
  //名字叫call的方法可以直接这样调用
  test();

  //或者
  Test()();
}


/*abstract*/ class Parent{
  void a(){
  }
}

class Child extends Parent{
  @override
  void a(){

  }
}

class ChildImpl implements Parent{
  @override
  void a() {

  }
}

class Test{
  //名字叫call的方法可以直接这样调用
  //Test()()
  void call(){
    print('Test.call()');
  }
}


