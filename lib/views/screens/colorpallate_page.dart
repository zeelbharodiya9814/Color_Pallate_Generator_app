import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pr_color_pallate/api_helper_class/ColorPallate_helper.dart';
import 'package:provider/provider.dart';

import '../../model/ColorPallate_model.dart';
import '../../provider/color_pallate_provider.dart';
import '../../provider/color_pallate_provider.dart';
import '../../provider/color_pallate_provider.dart';
import '../../provider/color_pallate_provider.dart';
import '../../provider/color_pallate_provider.dart';
import '../../provider/color_pallate_provider.dart';
import '../../provider/color_pallate_provider.dart';
import '../../provider/themeprovider.dart';

class Pallets extends StatefulWidget {
  const Pallets({Key? key}) : super(key: key);

  @override
  State<Pallets> createState() => _PalletsState();
}

class _PalletsState extends State<Pallets> {


  Random r = Random();

  var selected;



  // Map colorA = {
  //   1: Colors.teal,
  //   2: Colors.purpleAccent,
  //   3: Colors.deepPurpleAccent,
  //   4: Colors.yellowAccent,
  //   5: Colors.green,
  //   6: Colors.red,
  //   7: Colors.blue
  // };
  //
  // var A = Color(0xffff0000);
  // var B = Color(0xff008080);
  // var C = Color(0xffff66ff);
  // var D = Color(0xff4d94ff);
  // var E = Color(0xffffff00);
  // var F = Color(0xffff9900);






  late  ColorPalette colorPalette;

  @override
  Widget build(BuildContext context) {

    Provider.of<PallateProvider>(context, listen: false).decodedData();
    colorPalette = Provider.of<PallateProvider>(context).colorPalette;

    return Scaffold(
      backgroundColor: Provider.of<ThemeProvider>(context).tm1.isDark
             ? Colors.grey[800]
             : Colors.white,

      appBar: AppBar(
        backgroundColor: Provider.of<ThemeProvider>(context).tm1.isDark
            ? Colors.grey[900]
            : Colors.grey[300],
        title: Text(
          "Color Palette Generator",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
            fontSize: 25,
            color: selected,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Provider.of<ThemeProvider>(context , listen: false).changetheme();
          }, icon: Provider.of<ThemeProvider>(context).tm1.isDark
              ? Icon(Icons.light_mode_outlined)
              : Icon(Icons.dark_mode,color: Colors.black,),),
        ],
      ),
      body: Column(
        children: [
          Spacer(
            // flex: ,
          ),
          Spacer(
            flex: 2,
          ),
          Align(
            child: Card(
              elevation: 25,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Container(
                height: MediaQuery.of(context).size.height / 2.3,
                width: MediaQuery.of(context).size.width / 3.3,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = Color(int.parse(colorPalette.colorA));
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:  Color(int.parse(colorPalette.colorA)),
                            // Color(int.parse(colorPalette.colorA)),
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = Color(int.parse(colorPalette.colorB));
                          });
                        },
                        child: Container(
                          color: Color(int.parse(colorPalette.colorB)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = Color(int.parse(colorPalette.colorC));
                          });
                        },
                        child: Container(
                          color: Color(int.parse(colorPalette.colorC)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = Color(int.parse(colorPalette.colorD));
                          });
                        },
                        child: Container(
                          color: Color(int.parse(colorPalette.colorD)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = Color(int.parse(colorPalette.colorE));
                          });
                        },
                        child: Container(
                          color: Color(int.parse(colorPalette.colorE)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = Color(int.parse(colorPalette.colorF));
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(int.parse(colorPalette.colorF)),
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          InkWell(
            onTap: () {
              Provider.of<PallateProvider>(context, listen: false).changeColorPalette();
            },
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: MediaQuery.of(context).size.height / 16,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                  color: Provider.of<ThemeProvider>(context).tm1.isDark
                      ? Colors.grey[900]
                      : Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Generate",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: selected
                  ),
                ),
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
