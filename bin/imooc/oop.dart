void main(List<String> arguments) {}

class Student extends Person {
  String _school; //_开头为私有变量
  String city;
  String country;
  String name;

  //可选参数+默认参数
  Student(String name, int? age, this._school, {this.city = "city", this.country = "china"})
      : name = "$country.$city",
        //初始化列表:只能在直接构造器中设置
        super(name, age) {
    print("构造方法体不是必须的");
  }

  Student.X(String name, int? age) : this(name, age, "school");
}

class Person {
  String name;
  int? age;

  Person(this.name, this.age);

  //命名构造方法
  Person.Name(this.name);

  //命名构造方法
  Person.XXX(this.name);

  @override
  String toString() {
    return "name:$name,age:$age";
  }
}
