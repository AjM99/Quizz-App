import 'questions.dart';
import 'main.dart';

// this is for Abstraction
class Brain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: "Anuj is a god tier programmer", a: false),
    Question(q: "Life is sad", a: true),
    Question(q: "U can change your fate", a: false),
    Question(q: "Isekai is real", a: true),
    Question(q: "One piece is best anime/   Tv series of all time", a: true),
    Question(q: "Am  I lazy?!!", a: true),
    Question(q: "lazy people are smartworkers", a: true),
    Question(
        q: "Click true u will get point..or may be u wont??!!DO u trust me?? ",
        a: true),
    Question(q: "lol, u shouldn't have trust me,now press false ", a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber = _questionNumber + 1;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  // this is for encapsulation
  String questionBankAccess() {
    return _questionBank[_questionNumber].questionText;
  }

  bool questionBankAccess2() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool End() {
    if (_questionNumber == _questionBank.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
