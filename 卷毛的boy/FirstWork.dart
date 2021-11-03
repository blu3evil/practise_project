import 'dart:io';


//定义枚举Emotion
enum Emotion { happy , sad , angry }
//定义类Person
class Person {
  String name;
  int age;
  Emotion emo;
  Person({required this.name,required this.age,required this.emo});
  //获取文件信息
  getSchedule() {
    String FileName = '${name}_schedule.json';
    File file = new File(FileName);
    try{
      String content = file.readAsStringSync();
      print(content);
    }
    catch(e){
      print('FileNotFoundException');
    }
  }
  @override
  String toString() {
    String emos;
    switch (emo) {
      case Emotion.angry:
        emos = 'angry';
        break;
      case Emotion.sad:
        emos = 'sad';
        break;
      case Emotion.happy:
        emos = 'happy';
        break;
    }
    return "Person<$name,$age,$emos>";
  }
}
void main(){
  Person person = Person(name:'Jack',age:21,emo:Emotion.happy);
  print(person);
  person.getSchedule();
}
