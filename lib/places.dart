import 'package:flutter/cupertino.dart';

class Places {
  final String placeName;
  final String? placeDescription; // не обязательный параметр с ? без required
  final String placeImage;

  const Places({
    // исп {} чтобы параметры были именными
    required this.placeName,
    this.placeDescription,
    required this.placeImage,
  });
}

abstract class ImagesOfPlaces {
  // static const _path = 'assets/images'; //чтобы путь был короче
  // static const yamanashi = '$_path/yamanashi.jpg'; // подставляем

  static const bamboo = 'assets/images/bamboo.jpg';
  static const hitachi = 'assets/images/hitachi.jpg';
  static const kawachi = 'assets/images/kawachi.jpg';
  static const kureito = 'assets/images/kureito.jpg';
  static const natedara = 'assets/images/natedara.jpg';
  static const shibazakura = 'assets/images/shibazakura.jpg';
  static const tea = 'assets/images/tea.jpg';
}

final List<Places> placesList = [
  const Places(
    placeName: "Яманаси",
    placeDescription: 'Поля Шибазакура',
    placeImage: ImagesOfPlaces.shibazakura,
  ),
  const Places(
    placeName: "Китакюсю",
    placeDescription: 'Туннель из глициний Вистерия в саду цветов Кавати Фудзи',
    placeImage: ImagesOfPlaces.kawachi,
  ),
  const Places(
    placeName: "Токио",
    placeDescription: 'Поле из 4,5 миллионов незабудок в парке Хитачи',
    placeImage: ImagesOfPlaces.hitachi,
  ),
  const Places(
    placeName: "Киото",
    placeDescription: 'Бамбуковая роща Сагано, парк Арасияма',
    placeImage: ImagesOfPlaces.bamboo,
  ),
  const Places(
    placeName: "Комацу",
    placeDescription: 'Храм Натадэра',
    placeImage: ImagesOfPlaces.natedara,
  ),
  const Places(
    placeName: "Фудзиёсида",
    placeDescription: 'Пагода Курейто и гора Фудзияма',
    placeImage: ImagesOfPlaces.kureito,
  ),
  const Places(
    placeName: "Сидзуока",
    placeDescription: 'Чайный сад с видом на гору Фудзи',
    placeImage: ImagesOfPlaces.tea,
  ),
];
