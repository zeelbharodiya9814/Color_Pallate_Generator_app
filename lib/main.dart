import 'package:flutter/material.dart';
import 'package:pr_color_pallate/provider/color_pallate_provider.dart';
import 'package:pr_color_pallate/provider/themeprovider.dart';
import 'package:pr_color_pallate/views/screens/colorpallate_page.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PallateProvider(),),
          ChangeNotifierProvider(create: (context) => ThemeProvider(),),
        ],
      builder: (context,_) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: (Provider.of<ThemeProvider>(context).tm1.isDark == false)
                ? ThemeMode.light
                : ThemeMode.dark,
            home: Pallets(),
          );
      },
    ),
  );
}