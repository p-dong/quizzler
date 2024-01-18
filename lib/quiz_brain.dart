// ignore_for_file: prefer_final_fields

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'Water boils at 100 degrees Celsius.', a: true),
    Question(q: 'The Earth is flat.', a: false),
    Question(q: 'Mount Everest is the tallest mountain on Earth.', a: true),
    Question(q: 'Goldfish have a three-second memory.', a: false),
    Question(q: 'The Great Wall of China is visible from space.', a: false),
    Question(q: 'A group of crows is called a murder.', a: true),
    Question(q: 'Bananas are berries.', a: true),
    Question(
        q: 'The speed of light is faster than the speed of sound.', a: true),
    Question(q: 'Octopuses have three hearts.', a: true),
    Question(
        q: 'The Sahara Desert is the largest desert in the world.', a: false),
    Question(q: 'The Pacific Ocean is the largest ocean on Earth.', a: true),
    Question(q: 'Dolphins are fish.', a: false),
    Question(q: 'The Eiffel Tower is located in London.', a: false),
    Question(q: 'Honey never spoils.', a: true),
    Question(q: 'The moon is a star.', a: false),
    Question(q: 'Cats can rotate their ears 180 degrees.', a: true),
    Question(
        q: 'Albert Einstein was awarded the Nobel Prize in Chemistry.',
        a: false),
    Question(q: 'Penguins are mammals.', a: false),
    Question(q: 'The currency of Japan is the yuan.', a: false),
    Question(q: 'Venus is the hottest planet in our solar system.', a: true),
    Question(q: 'Spiders have six legs.', a: false),
    Question(
        q: 'The Amazon rainforest produces 20% of the world\'s oxygen.',
        a: true),
    Question(
        q: 'The Statue of Liberty was a gift from France to the United States.',
        a: true),
    Question(q: 'Kangaroos can only jump forward, not backward.', a: true),
    Question(q: 'The longest river in the world is the Nile.', a: true),
    Question(q: 'Snakes can blink their eyes.', a: false),
    Question(q: 'Elephants are the only mammals that can\'t jump.', a: true),
    Question(q: 'The currency of Brazil is the real.', a: true),
    Question(q: 'There are 365 days in a leap year.', a: false),
    Question(q: 'The human brain stops growing at the age of 25.', a: false),
    Question(q: 'Antarctica is the driest continent on Earth.', a: true),
    Question(q: 'The planet Mars is known as the Red Planet.', a: true),
    Question(q: 'Cheetahs are the fastest land animals.', a: true),
    Question(q: 'Diamonds are made from coal.', a: false),
    Question(q: 'Sharks are mammals.', a: false),
    Question(q: 'The capital of Australia is Sydney.', a: false),
    Question(q: 'Hippopotamuses can run faster than humans.', a: false),
    Question(
        q: 'The Great Barrier Reef is the largest coral reef system in the world.',
        a: true),
    Question(q: 'Polar bears are left-handed.', a: false),
    Question(q: 'The human body has 206 bones.', a: true),
    Question(q: 'Jupiter is the largest planet in our solar system.', a: true),
    Question(
        q: 'Giraffes have the same number of neck vertebrae as humans.',
        a: true),
    Question(q: 'The currency of China is the yen.', a: false),
    Question(
        q: 'Chameleons change color to blend in with their surroundings.',
        a: true),
    Question(q: 'The moon revolves around the Earth.', a: true),
    Question(q: 'The sun is a star.', a: true),
    Question(q: 'Cows have four stomachs.', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  int totalQuestion() {
    return _questionBank.length;
  }
}
