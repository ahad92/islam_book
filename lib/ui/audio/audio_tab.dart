import 'package:educational_audioplayer/loader.dart';
import 'package:educational_audioplayer/player.dart';
import 'package:flutter/material.dart';

import '../../book_resource/audio.dart';
import '../../book_resource/book.dart';
import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../common_widgets/text.dart';
import 'audio_icon.dart';

class AudioList extends StatefulWidget {
  final String header;
  final int chapterIndex;
  final PageStorageKey key;
  final Player player;

  AudioList({this.header, this.chapterIndex, this.key, this.player});
  @override
  _AudioListState createState() => _AudioListState();
}

class _AudioListState extends State<AudioList> with BookSharedPreferences {
  @override
  void initState() {
    super.initState();
    getLastPlayedAudio();
  }

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
    for (int lecturerIndex = 0;
        lecturerIndex < lecturers.length;
        lecturerIndex++) {
      if (audios[widget.chapterIndex][lecturerIndex].length > 0) {
        audioTabList.add(Divider());
        audioTabList.add(ListTile(
            title: Text(lecturers[lecturerIndex],
                style: TextStyle(
                    fontSize: russianFontSize,
                    fontWeight: FontWeight.bold,
                    height: textRowHeight)),
            subtitle: Text(lecture_sources[lecturerIndex],
                style: TextStyle(
                    fontSize:
                        russianFontSize * secondaryHeaderFontSizeMultiplier,
                    color: Theme.of(context).unselectedWidgetColor,
                    height: textRowHeight)),
            trailing: LoadDeleteButton(
                context: context,
                audios: audios[widget.chapterIndex][lecturerIndex])));
      }
      for (int audioIndex = 0;
          audioIndex < audios[widget.chapterIndex][lecturerIndex].length;
          audioIndex++) {
        audioTabList.add(Container(
          color: (audios[widget.chapterIndex][lecturerIndex][audioIndex].url ==
                  lastAudioUrl)
              ? Theme.of(context).highlightColor
              : null,
          child: ListTile(
              leading: AudioIcon(
                  isSelected: audios[widget.chapterIndex][lecturerIndex]
                              [audioIndex]
                          .url ==
                      lastAudioUrl),
              title: Text('$resourceLectureRussian ${audioIndex + 1}',
                  style: TextStyle(
                    fontSize: russianFontSize,
                  )),
              onTap: () {
                widget.player.show();
                widget.player.play(
                    audios[widget.chapterIndex][lecturerIndex], audioIndex,
                    setLastAudioMethodLocal: setLastPlayedAudio);
              }),
        ));
      }
    }
    return audioTabList;
  }
}
