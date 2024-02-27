class QuizModel {
  QuizModel(this.question, this.answer);
  final String question;
  final bool answer;
}

final q1 = QuizModel('Кыргыз Республикасынын борбору Бишкек шаары?', true);
final q2 = QuizModel('Кыргызстанда 7 (жети) област бар?', true);
final q3 =
    QuizModel('Кыргыз Республикасынын мамлекеттик туусу ак тусто?', false);
final q4 = QuizModel('Ысык кол Баткенде жайгашкан?', false);
final q5 = QuizModel('Нарын областында 7 район бар?', false);
final q6 =
    QuizModel('Кыргыз Республикасынын мамлекеттик тили Кыргыз тили?', true);
final q7 =
    QuizModel('31-август Кыргыз Республикасынын Эгемендуулук куну?', true);
final q8 = QuizModel('Кыргыз Республикасы Борбордук Азияда жайгашкан?', true);

List<QuizModel> quizzes = [
  q1,
  q2,
  q3,
  q4,
  q5,
  q6,
  q7,
  q8,
];
