import 'package:capitals_app/constants/app_text.dart';
import 'package:capitals_app/models/questions.dart';

class Continents {
  const Continents({
    required this.name,
    required this.image,
    this.audio,
    this.questions,
  });

  final String name;
  final String image;
  final List<Questions>? questions;
  final String? audio;
}

final europe = Continents(
  name: AppText.europe,
  image: 'europe',
  audio: 'europa1',
  questions: europeQuestions,
);

final asia = Continents(
  name: AppText.asia,
  image: 'asia',
  audio: 'asia',
  questions: asiaQuestions,
);

final northAmerica = Continents(
  name: AppText.northAmerica,
  image: 'north_america',
  audio: 'northAmerica',
  questions: northAmericaQuestions,
);

const southAmerica = Continents(
  name: AppText.southAmerica,
  image: 'south_america',
);

const africa = Continents(
  name: AppText.africa,
  image: 'africa',
);

const australia = Continents(
  name: AppText.australia,
  image: 'australia',
);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
