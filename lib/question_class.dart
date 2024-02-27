class QuestionClass {
  final String questionText;
  final bool questionAnswer;
  QuestionClass({required this.questionText, required this.questionAnswer});
}

class QuestionBank {
  List<QuestionClass> questionBrain = [
    QuestionClass(
        questionText: 'Кыргыз Республикасынын борбору Бишкек шаары?',
        questionAnswer: true),
    QuestionClass(
        questionText: 'Кыргызстанда 7 (жети) област бар?',
        questionAnswer: true),
    QuestionClass(
        questionText: 'Кыргыз Республикасынын мамлекеттик туусу ак тусто?',
        questionAnswer: false),
    QuestionClass(
        questionText: 'Ысык кол Баткенде жайгашкан?', questionAnswer: false),
    QuestionClass(
        questionText: 'Нарын областында 7 район бар?', questionAnswer: false),
    QuestionClass(
        questionText: 'Кыргыз Республикасынын мамлекеттик тили Кыргыз тили?',
        questionAnswer: true),
    QuestionClass(
        questionText: '31-август Кыргыз Республикасынын Эгемендуулук куну?',
        questionAnswer: true),
    QuestionClass(
        questionText: 'Кыргыз Республикасы Борбордук Азияда жайгашкан?',
        questionAnswer: true),
    // QuestionClass(questionText: 'Кыргыз Республикасы', questionAnswer: true),
  ];
}
