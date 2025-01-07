import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';

class GameLogic {
  final String hiddenCard = 'assets/images/box.png';
  List<String>? cardsImg;
  String level = '';
  String theme = '';

  late List<String> card_list = [];

  var axiCount = 0;
  var cardCount = 0;
  List<Map<int, String>> matchCheck = [];

  void initGame(BuildContext context) {

    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    String difficulty = arguments['level'];
    theme = arguments['theme'];


    if (difficulty == 'medium') {
      cardCount = 24;
      axiCount = 6;
    } else if (difficulty == 'hard') {
      cardCount = 30;
      axiCount = 6;
    } else {
      cardCount = 16;
      axiCount = 4;
    }


    if (theme == 'nature') {
      card_list = [
        'assets/images/nature1.png',
        'assets/images/nature2.png',

      ];
    } else if (theme == 'animals') {
      card_list = [
        'assets/images/animal1.png',
        'assets/images/animal2.png',

      ];
    } else if (theme == 'space') {
      card_list = [
        'assets/images/space1.png',
        'assets/images/space2.png',

      ];
    } else {

      card_list = [
        'assets/images/angry-birds.png',
        'assets/images/bomberman.png',

      ];
    }


    card_list.shuffle();
    cardsImg = List<String>.generate(cardCount, (index) {
      return hiddenCard;
    });
  }
}
