import 'package:flutter/material.dart';

import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';

class TextSizeSetting extends StatefulWidget {
  final Function updateText;
  TextSizeSetting(this.updateText);
  @override
  _TextSizeSettingState createState() => _TextSizeSettingState();
}

class _TextSizeSettingState extends State<TextSizeSetting>
    with BookSharedPreferences {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              iconSize: changeTextSizeButtonSize,
              icon: ChangeTextSizeIcon('-'),
              onPressed: () {
                setRussianFontSize(russianFontSize - textSizeStep);
                widget.updateText();
              },
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  resourceRussianTextSize,
                  style: TextStyle(fontSize: defaultRussianTextSize),
                ),
                Text(
                  russianFontSize.toInt().toString(),
                  style: TextStyle(fontSize: textSizeTextSize),
                )
              ],
            )),
            IconButton(
              iconSize: changeTextSizeButtonSize,
              icon: ChangeTextSizeIcon('+'),
              onPressed: () {
                setRussianFontSize(russianFontSize + textSizeStep);
                widget.updateText();
              },
            )
          ],
        ),
        Container(padding: EdgeInsets.all(textEdgeInset)),
        Row(
          children: <Widget>[
            IconButton(
              iconSize: changeTextSizeButtonSize,
              icon: ChangeTextSizeIcon('-'),
              onPressed: () {
                setArabicFontSize(arabicFontSize - textSizeStep);
                widget.updateText();
              },
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  resourceArabicTextSize,
                  style: TextStyle(fontSize: defaultRussianTextSize),
                ),
                Text(
                  arabicFontSize.toInt().toString(),
                  style: TextStyle(fontSize: textSizeTextSize),
                )
              ],
            )),
            IconButton(
              iconSize: changeTextSizeButtonSize,
              icon: ChangeTextSizeIcon('+'),
              onPressed: () {
                setArabicFontSize(arabicFontSize + textSizeStep);
                widget.updateText();
              },
            )
          ],
        )
      ],
    );
  }
}

class ChangeTextSizeIcon extends StatelessWidget {
  final String text;
  ChangeTextSizeIcon(this.text);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: changeTextSizeButtonSize,
      child: Text((text).toString(),
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: textSizeButtonTextSize)),
    );
  }
}
