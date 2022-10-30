import 'package:flutter/material.dart';
import 'package:interesting_places/card_description_screen.dart';
import 'main_cards_screen.dart';


void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => const Collection(),
        '/description': (context) => const PlaceDescriptionScreen(),
      },
    ),
  );
}

