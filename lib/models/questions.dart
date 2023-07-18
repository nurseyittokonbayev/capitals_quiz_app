class Questions {
  const Questions({
    required this.text,
    required this.answers,
    required this.image,
  });

  final String text;
  final String image;
  final List<Answer> answers;
}

class Answer {
  const Answer({
    required this.text,
    this.isTrue = false,
  });
  final String text;
  final bool isTrue;
}

const answer1 = Questions(
  text: 'Будапешт',
  answers: [
    Answer(text: 'Болгария'),
    Answer(text: 'Албания'),
    Answer(text: 'Венгрия', isTrue: true),
    Answer(text: 'Эстония'),
  ],
  image: 'europa/budapest.jpg',
);

const answer2 = Questions(
  text: 'Берлин',
  answers: [
    Answer(text: 'Германия', isTrue: true),
    Answer(text: 'Италия'),
    Answer(text: 'Албания'),
    Answer(text: 'Сербия'),
  ],
  image: 'europa/berlin.jpg',
);

const answer3 = Questions(
  text: 'Берн',
  answers: [
    Answer(text: 'Швеция'),
    Answer(text: 'Швецария', isTrue: true),
    Answer(text: 'Греция'),
    Answer(text: 'Австрия'),
  ],
  image: 'europa/bern.jpg',
);

const answer4 = Questions(
  text: 'Прага',
  answers: [
    Answer(text: 'Чехия', isTrue: true),
    Answer(text: 'Хорватия'),
    Answer(text: 'Латвия'),
    Answer(text: 'Польша'),
  ],
  image: 'europa/praga.jpg',
);

const answer5 = Questions(
  text: 'Варшава',
  answers: [
    Answer(text: 'Германия'),
    Answer(text: 'Италия'),
    Answer(text: 'Польша', isTrue: true),
    Answer(text: 'Ирландия'),
  ],
  image: 'europa/warsaw.jpg',
);

const answer6 = Questions(
  text: 'Абу-Даби',
  answers: [
    Answer(text: 'ОАЭ', isTrue: true),
    Answer(text: 'Иордания'),
    Answer(text: 'Иран'),
    Answer(text: 'Судовская Арабия'),
  ],
  image: 'asia/abudhabi.jpg',
);

const answer7 = Questions(
  text: 'Бангкок',
  answers: [
    Answer(text: 'Индонезия'),
    Answer(text: 'Мьянма'),
    Answer(text: 'Тайланд', isTrue: true),
    Answer(text: 'Малдивы'),
  ],
  image: 'asia/bangok.jpg',
);

const answer8 = Questions(
  text: 'Пхеньян',
  answers: [
    Answer(
      text: 'Йемен',
    ),
    Answer(text: 'Сингапур'),
    Answer(text: 'Бутан'),
    Answer(text: 'КНДР', isTrue: true),
  ],
  image: 'asia/pyongyang.jpg',
);

const answer9 = Questions(
  text: 'Сеул',
  answers: [
    Answer(text: 'Республика Корей', isTrue: true),
    Answer(text: 'Япония'),
    Answer(text: 'Китай'),
    Answer(text: 'Вьетнам'),
  ],
  image: 'asia/seoul.jpg',
);

const answer10 = Questions(
  text: 'Улан-Батор',
  answers: [
    Answer(text: 'Бахрейн'),
    Answer(text: 'Монголия', isTrue: true),
    Answer(text: 'Узбекистан'),
    Answer(text: 'Южная Осетия'),
  ],
  image: 'asia/ulaanbaatar.jpg',
);

List<Questions> europeQuestions = [answer1, answer2, answer3, answer4, answer5];
List<Questions> asiaQuestions = [
  answer6,
  answer7,
  answer8,
  answer9,
  answer10,
  answer6,
  answer7,
  answer8,
  answer9,
  answer10
];
