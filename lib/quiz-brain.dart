import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 1: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank ให้มีอย่างน้อย 5 คำถาม
  List<Question> _questionBank=[
    Question(q: '1 + 1 = 2', a: true),
    Question(q: 'Durian is citrus fruit', a: false),
    Question(q: '2 + 2 = 5', a: false),
    Question(q: 'Water freeze at 0 degree Celcius', a: true),
    Question(q: 'Man can fly', a: false),
    Question(q: 'Cat is very cute', a: true),
    Question(q: 'This is the sixth question', a: false),
    Question(q: 'Capacitor can store happiness', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}