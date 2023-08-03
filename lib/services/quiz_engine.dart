import 'package:scent_wiz/components/question.dart';

QuizEngine quizEngine = QuizEngine();

class QuizEngine {
  int questionNumber = 0;
  static const String floral = 'Floral,';
  static const String fresh = 'Fresh,';
  static const String oriental = 'Oriental,';
  static const String woody = 'Woody,';

  final List<Question> questionBank = [
    Question(q: 'What type of scent are you looking for?',
      oA: 'Masculine',
      rA: 'Masculine,',
      oB: 'Feminine',
      rB: 'Feminine,',
      oC: 'Unisex',
      rC: 'Unisex,',
      oD: 'All of the above',
      rD: 'Masculine, Feminine, Unisex,'
    ),
    Question(q: 'What do you want a scent to say about you?',
      oA: 'Classy',
      rA: floral,
      oB: 'Athletic',
      rB: woody,
      oC: 'Powerful/Sensual',
      rC: oriental,
      oD: 'Clean',
      rD: fresh,
    ),
    Question(q: 'Which element do you gravitate towards?',
      oA: 'Air',
      rA: floral,
      oB: 'Water',
      rB: fresh,
      oC: 'Fire',
      rC: oriental,
      oD: 'Earth',
      rD: woody,
    ),
    Question(q: 'Which scent appeals to you most?',
      oA: 'Floral',
      rA: floral,
      oB: 'Clean',
      rB: fresh,
      oC: 'Spice',
      rC: oriental,
      oD: 'Wood',
      rD: woody,
    ),
    Question(q: 'Which scent appeals to you most?',
      oA: 'Orange Blossom',
      rA: '$floral+Orange Blossom,',
      oB: 'Bergamot',
      rB: '$fresh+Bergamot,',
      oC: 'Amber',
      rC: '$oriental+Amber,',
      oD: 'Sandalwood',
      rD: '$woody+Sandalwood,',
    ),
    Question(q: 'Which scent appeals to you most?',
      oA: 'Jasmine',
      rA: '$floral+Jasmine,',
      oB: 'The Ocean',
      rB: '$fresh+Ocean,',
      oC: 'Clove',
      rC: '$oriental+Clove,',
      oD: 'Leather',
      rD: '$woody+Leather,',
    ),
    Question(q: 'Which scent appeals to you most?',
      oA: 'Rose',
      rA: '$floral+Rose,',
      oB: 'Spearmint',
      rB: '$fresh+Spearmint,',
      oC: 'Cinnamon',
      rC: '$oriental+Cinnamon,',
      oD: 'Musk',
      rD: '$woody+Musk,',
    ),
    Question(q: 'Which scent appeals to you most?',
      oA: 'Rose',
      rA: '$floral+Rose,',
      oB: 'Spearmint',
      rB: '$fresh+Spearmint,',
      oC: 'Cinnamon',
      rC: '$oriental+Cinnamon,',
      oD: 'Musk',
      rD: '$woody+Musk,',
    ),
  ];

  void nextQuestion() {
    if (questionNumber < questionBank.length) {
      questionNumber++;
    } else {

    }
  }

  String getQuestionText() {
    return questionBank[questionNumber].questionText;
  }

  String getQuestionOptionA() {
    return questionBank[questionNumber].optionA;
  }
  String getQuestionOptionB() {
    return questionBank[questionNumber].optionB;
  }
  String getQuestionOptionC() {
    return questionBank[questionNumber].optionC;
  }
  String getQuestionOptionD() {
    return questionBank[questionNumber].optionD;
  }
  String getQuestionResultA() {
    return questionBank[questionNumber].resultA;
  }
  String getQuestionResultB() {
    return questionBank[questionNumber].resultB;
  }
  String getQuestionResultC() {
    return questionBank[questionNumber].resultC;
  }
  String getQuestionResultD() {
    return questionBank[questionNumber].resultD;
  }


  bool isFinished() {
    if (questionNumber >= questionBank.length-1) {

      return true;

    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}