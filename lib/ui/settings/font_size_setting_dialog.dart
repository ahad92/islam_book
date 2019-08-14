import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../common_widgets/text.dart';

class FontSizeSetting extends StatefulWidget {
  final Function updateText;
  final bool isArabic;
  FontSizeSetting({this.isArabic, this.updateText});
  @override
  _FontSizeSettingState createState() => _FontSizeSettingState();
}

class _FontSizeSettingState extends State<FontSizeSetting>
    with BookSharedPreferences {
  @override
  Widget build(BuildContext context) {
    if (widget.isArabic) {
      return Column(
        children: <Widget>[
          DefaultArabicText(resourceArabicFontSizeText),
          Container(padding: EdgeInsets.all(textEdgeInset)),
          Text(
            '${(arabicFontSize / defaultArabicFontSize * 100 + 0.1).toInt()} %',
            style: TextStyle(fontSize: fonSizeFontSize),
          ),
          Slider.adaptive(
              value: arabicFontSize,
              min: defaultArabicFontSize * minFontSizePercentage,
              max: defaultArabicFontSize * maxFontSizePercentage,
              divisions: fontSizeDivisionNumber,
              onChanged: (double value) {
                setArabicFontSize(value);
                widget.updateText();
              })
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          DefaultRussianText(resourceRussianFontSizeText),
          Container(padding: EdgeInsets.all(textEdgeInset)),
          Text(
            '${(russianFontSize / defaultRussianFontSize * 100 + 0.1).toInt()} %',
            style: TextStyle(fontSize: fonSizeFontSize),
          ),
          Slider.adaptive(
              value: russianFontSize,
              min: defaultRussianFontSize * minFontSizePercentage,
              max: defaultRussianFontSize * maxFontSizePercentage,
              divisions: fontSizeDivisionNumber,
              onChanged: (double value) {
                setRussianFontSize(value);
                widget.updateText();
              })
        ],
      );
    }
  }
}
