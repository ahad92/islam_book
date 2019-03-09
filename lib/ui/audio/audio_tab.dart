import 'package:flutter/material.dart';

import '../../book_resource/book.dart';
import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../common_widgets/divider.dart';
import '../common_widgets/text.dart';

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
    return Scrollbar(
      key: widget.key,
      child: ListView(
        children: getAudioTabList(),
      ),
    );
  }

  getAudioTabList() {
    List<Widget> audioTabList = [];
    audioTabList.add(TabTextHeader(
        header: chapters[widget.chapterIndex].russianHeader,
        chapterIndex: widget.chapterIndex,
        fontSize: russianFontSize));
    for (int i = 0; i < lecturers.length; i++) {
      audioTabList.add(DividedContainer());
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
          onTap: playLecture(
              chapterIndex: widget.chapterIndex,
              lecturerIndex: i,
              audioIndex: j),
        ));
      }
    }
    return audioTabList;
  }

  playLecture({int chapterIndex, int lecturerIndex, int audioIndex}) {}
}
