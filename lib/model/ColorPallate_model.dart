
import 'dart:ui';

class ColorPalette {
   String colorA;
   String colorB;
   String colorC;
   String colorD;
   String colorE;
   String colorF;

ColorPalette({
  required this.colorA,
  required this.colorB,
  required this.colorC,
  required this.colorD,
  required this.colorE,
  required this.colorF,
});

  factory ColorPalette.fromList({required Map data}) {
    return ColorPalette(
      colorA: data["dataA"],
      colorB: data["dataB"],
      colorC: data["dataC"],
      colorD: data["dataD"],
      colorE: data["dataE"],
      colorF: data["dataF"],
    );
  }
}
