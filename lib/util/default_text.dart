import 'package:flutter/material.dart';

import 'constants.dart';

class DefaultRussianText extends StatelessWidget {
  final String text;
  DefaultRussianText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: defaultRussianFontSize));
  }
}

class DefaultArabicText extends StatelessWidget {
  final String text;
  DefaultArabicText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: defaultArabicFontSize));
  }
}
