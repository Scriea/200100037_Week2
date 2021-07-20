// All questions

import 'package:flutterdev_2/qna.dart';

List<QnA> getQues(){
  List<QnA> questions = <QnA>[];
  QnA questionModel = new QnA();
  questionModel.setQnA('A baby has more bones than an adult', true);
  questions.add(questionModel);
  questionModel = new QnA();
  questionModel.setQnA('A cat can fly', false);
  questions.add(questionModel);
  questionModel = new QnA();
  questionModel.setQnA('The earth is the fourth planet from sun', false);
  questions.add(questionModel);
  questionModel = new QnA();
  questionModel.setQnA('Jupiter is composed mostly of iron', false);
  questions.add(questionModel);
  questionModel = new QnA();
  questionModel.setQnA('Sun is a star of average size', true);
  questions.add(questionModel);
  questionModel = new QnA();
  questionModel.setQnA('Venus has 2 moons', false);
  questions.add(questionModel);
  questionModel = new QnA();
  questionModel.setQnA('All types of cars have some type of engine', true);
  questions.add(questionModel);
  questionModel = new QnA();


  return questions;
}