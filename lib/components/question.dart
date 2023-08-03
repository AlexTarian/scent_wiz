class Question {
  late String questionText;
  late String optionA;
  late String resultA;
  late String optionB;
  late String resultB;
  late String optionC;
  late String resultC;
  late String optionD;
  late String resultD;

  Question({q, oA, rA, oB, rB, oC, rC, oD, rD, exp}) {
    questionText = q;
    optionA = oA;
    resultA = rA;
    optionB = oB;
    resultB = rB;
    optionC = oC;
    resultC = rC;
    optionD = oD;
    resultD = rD;
  }
}