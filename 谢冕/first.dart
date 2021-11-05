void main() {
  Emotion emotion = Emotion.happy;
  switch (emotion) {
    case Emotion.happy:
      print("I'm not happy");
      break;
  }
}

enum Emotion { happy, sad, angry }

class person {
  int age = 25;
  String name = '张三';
  String Emotion = 'emo';
}
class person {
  static int age = 21;
  static String name = "Jack";
  static String Emotion = "happy";
}

main() {
  print('${person.age.toString()}' '${person.name}' '${person.Emotion}');
}
