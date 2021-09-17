void main(List<String> arguments) {
  var c = C();
  var cc = CC();
  c.a();
  c.b();


}

//简写
class CC =Object with A,B;

//混合，类似于多继承
//如果A，B有重名的方法,优先级：1.自身  2.从with最右边查找,这里是B
//继承优先级：with最右边的
class C with A, B {
  @override
  void b() {
    print('C.b()');
    super.b();
  }
}

class A {
  //被别的类minx的类，不能有显式的构造方法
  // A(){
  //
  // }

  void a() {
    print('A.a()');
  }
  void b() {
    print('A.b()');
  }
}

class B {
  void b() {
    print('B.b()');
  }
}

