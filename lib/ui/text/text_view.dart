import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../util/constants.dart';

class TextView extends StatelessWidget {
  final String header;
  final String text;
  final int chapterIndex;
  final double fontSize;
  final TextDirection textDirection;
  final PageStorageKey key;

  TextView(
      {this.header,
      this.text,
      this.chapterIndex,
      this.fontSize,
      this.textDirection,
      this.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: key,
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: textEdgeInset, right: textEdgeInset),
            child: Column(
              children: <Widget>[
                Align(
                    alignment: textDirection == TextDirection.rtl
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    child: Text(
                        '${textDirection == TextDirection.rtl ? resourceChapterArabic : resourceChapterRussian} ${chapterIndex + 1}',
                        textDirection: textDirection,
                        style: TextStyle(
                            fontSize: fontSize,
                            color: Theme.of(context).unselectedWidgetColor,
                            fontWeight: FontWeight.bold))),
                Container(
                    padding: EdgeInsets.only(top: chapterTitleBorderSize),
                    alignment: textDirection == TextDirection.rtl
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    child: Text(
                      header,
                      textDirection: textDirection,
                      style: TextStyle(
                          fontSize: fontSize * headerFontSizeMultiplier,
                          fontWeight: FontWeight.bold,
                          height: textRowHeight),
                    ))
              ],
            )),
        Html(
          data: text,
//Optional parameters:
          padding: EdgeInsets.all(textEdgeInset),
          defaultTextStyle:
              TextStyle(fontSize: fontSize, height: textRowHeight),
        ),
      ],
    );
  }
}
