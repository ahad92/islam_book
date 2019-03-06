import 'package:flutter/material.dart';

import '../../book_resource/book.dart';
import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';

class AudioList extends StatefulWidget {
  final String header;
  final int chapterIndex;
  final PageStorageKey key;

  AudioList({this.header, this.chapterIndex, this.key});
  @override
  _AudioListState createState() => _AudioListState();
}

class _AudioListState extends State<AudioList> with BookSharedPreferences {
  @override
  Widget build(BuildContext context) {
    return ListView(
      key: widget.key,
      children: getAudioTabList(),
    );
  }

  getAudioTabList() {
    List<Widget> audioTabList = [];
    audioTabList.add(Container(
        padding:
            const EdgeInsets.only(left: textEdgeInset, right: textEdgeInset),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                    '$resourceChapterRussian ${widget.chapterIndex + 1}',
                    style: TextStyle(
                        fontSize: russianFontSize,
                        color: Theme.of(context).unselectedWidgetColor,
                        fontWeight: FontWeight.bold))),
            Padding(
              padding: const EdgeInsets.only(top: chapterHeaderBorderSize),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    chapters[widget.chapterIndex].russianHeader,
                    style: TextStyle(
                        fontSize: russianFontSize * headerFontSizeMultiplier,
                        fontWeight: FontWeight.bold,
                        height: textRowHeight),
                  )),
            )
          ],
        )));
    for (int i = 0; i < lecturers.length; i++) {
      audioTabList.add(Container(
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Theme.of(context).dividerColor,
                    width: chapterHeaderBorderSize)),
          )));
      audioTabList.add(ListTile(
          title: Text(lecturers[i],
              style: TextStyle(
                  fontSize: russianFontSize,
                  fontWeight: FontWeight.bold,
                  height: textRowHeight))));
      for (int j = 0;
          j <
              chapters[widget.chapterIndex]
                  .tabList[defaultAudioTabPosition]
                  .lecturerList[i]
                  .audioList
                  .length;
          j++) {
        audioTabList.add(Divider());
        audioTabList.add(ListTile(
          leading: Icon(
            Icons.volume_up,
            size: audioIconSize,
          ),
          title: Text('$resourceLectureRussian ${j + 1}',
              style: TextStyle(
                fontSize: russianFontSize,
              )),
        ));
      }
    }
    return audioTabList;
  }
}
