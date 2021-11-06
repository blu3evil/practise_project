import 'dart:io';

enum Emotion { happy, sad, angry }

class FileNotFoundException {
  @override
  String toString() {
    return 'FileNotFoundException';
  }
}

class Person {
  String name;
  num age;
  Emotion emo;
  Person(this.name, this.age, this.emo); //构造函数
  @override
  String toString() {
    return 'Person<${this.name},${this.age},${this.emo}>';
  }

  Future<String> getSchedule() async {
    File file = File('${this.name}_schedule.json');
    try {
      var content = await file.readAsString();
      return content;
    } on FileSystemException {
      throw new FileNotFoundException();
    }
  }
}

void main() {
  Person man = Person('Jack', 21, Emotion.happy);
  print(man);
  man.getSchedule();

  return;
}
