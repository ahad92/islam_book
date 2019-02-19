import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../util/constants.dart';

class TextView extends StatelessWidget {
  final String header;
  final String text;
  final int chapterIndex;
  final double fontSize;
  final String keyString;

  TextView(
      {this.header,
      this.text,
      this.chapterIndex,
      this.fontSize,
      this.keyString});

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: PageStorageKey(keyString),
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: textEdgeInset, right: textEdgeInset),
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('$resourceChapter ${chapterIndex + 1}',
                        style: TextStyle(
                            fontSize: fontSize,
                            color: secondaryChapterTitleColor,
                            fontWeight: FontWeight.bold))),
                Container(
                    padding: EdgeInsets.only(top: chapterTitleBorderSize),
                    alignment: Alignment.topLeft,
                    child: Text(
                      header,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: fontSize * headerTextSizeMultiplier,
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
