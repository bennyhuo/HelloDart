import 'dart:io';

var topLevelVar = 10;
late String description = getValue();

String getValue() {
  print("getValue");
  return "1234";
}

void printInteger(int aNumber) {
  print('The number is $aNumber');
}

class Person {
  final String name;

  int age;

  Person(this.name, this.age);
}

void main(List<String> arguments) {
  print('Hello world!');
  print("Hello Dart!!!");

  var number = 42;
  printInteger(number);

  String? s = "hello";
  s = null;

  int? number2 = 30;
  number2 = null;

  int? number3; // null
  print(number3);

  print(description);

  final x = 1;
  //x = 3; // x
  const y = 2;
  // y = 3; // x
  const constString = "hello";

  final p = Person("benny", 2);
  // p.name = "Benny";

  // const p2 = Person();

  int timestamps = 9999999999999999;

  print(timestamps);

  var one = int.parse('FF', radix: 16);
  print(one);

  var s1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s1 ==
      'String concatenation works even over '
          'line breaks.');

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');

  var s3 = """
  $s2
  """;

  var rString = r"abc, \n $s2";

  List<int>? list = [1, 2, 3];
  //list = null;

  var list2 = [...?list];
  print(list2);

  var list3 = [1, 2, 3, if (list == null) 4 else 5];
  print(list3);

  var set = const {
    1,
    2,
  };

  var map = {
    "a": 1,
  };

  var emptyMap = {};
  var emptySet = <String>{};

  map["b"] = 2;
  var printIntegerAlias = printInteger;
  printIntegerAlias(12);

  var lambda = () {
    print(12);
    return 1;
  };

  var result = lambda();
  print(result);

  foo(a: 10);

  // exit(-1);

  //print("1212121");

  // int (*p)(int, char);
  var newList = list.map((e) => e.toString());
  print(newList);

  var person2 = PersonBuilder()
    ..setAge2(30)
    ..setName2("Benny")
    ..build();
}

void foo({required int a, int b = 0}) {}

Never returnsNever() {
  throw NullThrownError();
}

class PersonBuilder {
  String? name;
  int? age;

  PersonBuilder setName(String name) {
    this.name = name;
    return this;
  }

  PersonBuilder setAge(int age) {
    this.age = age;
    return this;
  }

  void setName2(String name) {
    this.name = name;
  }

  void setAge2(int age) {
    this.age = age;
  }

  Person build() => Person(name!, age!);
}
