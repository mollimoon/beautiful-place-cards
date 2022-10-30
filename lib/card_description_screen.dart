import 'package:flutter/material.dart';
import 'package:interesting_places/card_description_screen.dart';
import 'package:interesting_places/places.dart';

class PlaceDescriptionScreen extends StatelessWidget {
  const PlaceDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final place = ModalRoute.of(context)!.settings.arguments
        as Places; // достаем данные типа places из навигации (то что мы передали в пуш)
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(place.placeName),
      ),
      body: Column(
        children: [
          Hero(
              tag: place.placeImage,
              child: Image.asset(place.placeImage)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              place.placeDescription ?? '',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
