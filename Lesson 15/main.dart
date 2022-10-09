void main(List<String> args) {
  var emil = Human(name: "Emil", age: 23, gender: "Male");
  print(emil.name);
}

class Human {
  String name;
  int age;
  String gender;

  Human({this.name = "qwe", this.age = 12, this.gender = "qwe"});

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
