import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _questionCorrect = 0;

  final List<Question> _questionBank = [
    Question('Cows have four stomachs.', true),
    Question('The Great Wall of China is visible from the moon.', false),
    Question('Bananas are berries.', true),
    Question('The Eiffel Tower was originally designed for Barcelona, Spain.', false),
    Question('Water boils at a lower temperature in high altitudes.', true),
    Question('Spiders have six legs.', false),
    Question('The Sahara Desert is the largest desert in the world.', false),
    Question('Humans can regrow lost limbs like some animals.', false),
    Question('Mount Everest is the tallest mountain above sea level.', true),
    Question('Penguins are capable of flight.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  void increasePoint() {
    _questionCorrect++;
  }

  bool isWin() {
    if (_questionCorrect > _questionBank.length / 2) {
      return true;
    }
    return false;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
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
    _questionCorrect = 0;
  }
}
