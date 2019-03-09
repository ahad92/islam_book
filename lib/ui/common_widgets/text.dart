import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../util/constants.dart';

class TabText extends StatelessWidget {
  final String header;
  final String text;
  final int chapterIndex;
  final double fontSize;
  final TextDirection textDirection;
  final PageStorageKey key;

  TabText(
      {this.header,
      this.text,
      this.chapterIndex,
      this.fontSize,
      this.textDirection,
      this.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      key: key,
      child: ListView(
        children: <Widget>[
          TabTextHeader(
              header: header,
              chapterIndex: chapterIndex,
              fontSize: fontSize,
              textDirection: textDirection),
          Html(
            data: text,
//Optional parameters:
            padding: EdgeInsets.all(textEdgeInset),
            defaultTextStyle:
                TextStyle(fontSize: fontSize, height: textRowHeight),
          ),
        ],
      ),
    );
  }
}

class TabTextHeader extends StatelessWidget {
  final String header;
  final int chapterIndex;
  final double fontSize;
  final TextDirection textDirection;

  TabTextHeader(
      {this.header,
      this.chapterIndex,
      this.fontSize,
      this.textDirection = TextDirection.ltr});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: textEdgeInset, right: textEdgeInset),
        child: Column(
          children: <Widget>[
            Align(
                alignment: textDirection == TextDirection.rtl
                    ? Alignment.topRight
                    : Alignment.topLeft,
                child: Text(
                    chapterIndex == 0
                        ? ''
                        : '${textDirection == TextDirection.rtl ? resourceChapterArabic : resourceChapterRussian} ${chapterIndex}',
                    textDirection: textDirection,
                    style: TextStyle(
                        fontSize: fontSize * secondaryHeaderFontSizeMultiplier,
                        color: Theme.of(context).unselectedWidgetColor,
                        fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.only(top: chapterHeaderBorderSize),
                alignment: textDirection == TextDirection.rtl
                    ? Alignment.topRight
                    : Alignment.topLeft,
                child: Text(
                  header,
                  textDirection: textDirection,
                  style: TextStyle(
                      fontSize: fontSize * mainHeaderFontSizeMultiplier,
                      fontWeight: FontWeight.bold,
                      height: textRowHeight),
                ))
          ],
        ));
  }
}

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
