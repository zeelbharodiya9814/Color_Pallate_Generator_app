


import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/ColorPallate_model.dart';

class PallateProvider extends ChangeNotifier {


  List<ColorPalette> finalResult = [];

  Random r = Random();

  ColorPalette colorPalette = ColorPalette(
    colorA: "0xffffcdd2",
    colorB: "0xffef9a9a",
    colorC: "0xffef5350",
    colorD: "0xffe53935",
    colorE: "0xffc62828",
    colorF: "0xffb71c1c",
  );

  decodedData() async {
    String jsonData = await rootBundle.loadString("assets/json/data.json");

    List decodedData = jsonDecode(jsonData);
    finalResult = decodedData.map((e) => ColorPalette.fromList(data: e)).toList();
     // return finalResult;
  }

  changeColorPalette() {
    finalResult.shuffle();
    colorPalette = finalResult.first;
    notifyListeners();
  }
}





