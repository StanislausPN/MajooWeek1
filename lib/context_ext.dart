import 'package:flutter/cupertino.dart';

extension Media on BuildContext {
  MediaQueryData get media {
    return MediaQuery.of(this);
  }

  bool get isTabletSize {
    return media.size.shortestSide >= 768;
  }

  double get textScaleFactorValue {
    return media.textScaleFactor;
  }
}
