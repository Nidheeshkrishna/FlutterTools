import 'package:flutter/widgets.dart';

class SizeConfig {
  static double _screenWidth = 0;
  static double _screenHeight = 0;
  static double _blockWidth = 0;
  static double _blockHeight = 0;
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightMultiplier = 0;
  static double widthMultiplier = 0;
  static double sizeMultiplier = 0;

  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
    } else {
      _screenHeight = constraints.maxWidth;
      _screenWidth = constraints.maxHeight;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth =
        // _screenWidth > 600 ? _screenWidth / 170 :
        _screenWidth / 100;
    _blockHeight =
        // _screenWidth > 600 ? _screenHeight / 170 :
        _screenHeight / 100;
    screenWidth = _screenWidth;
    screenHeight = _screenHeight;
    textMultiplier = isTablet()
        ? (_blockHeight / _blockWidth) * 7
        : ((_blockHeight / _blockWidth) * (_blockHeight / _blockWidth))
            .clamp(4, 5);

    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
    sizeMultiplier = _blockWidth.clamp(3, 4);
  }

  static bool isTablet() {
    return screenHeight > 1080 && screenWidth > 720;
  }
}
