import 'package:abu_malik_widgets/font_size.dart';
import 'package:abu_malik_widgets/text.dart';
import 'package:educational_audioplayer/audio_item.dart';
import 'package:educational_audioplayer/player.dart';
import 'package:flutter/material.dart';

import '../../book_resource/audio.dart';
import '../../book_resource/decription.dart';
import '../../book_resource/structure.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';

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
        preHeader: '$resourceChapterRussian ${widget.chapterIndex}',
        fontSize: russianFontSize));
    for (int lecturerIndex = 0;
        lecturerIndex < lecturers.length;
        lecturerIndex++) {
      if (audios[widget.chapterIndex][lecturerIndex].length > 0) {
        audioTabList.add(Divider());
        audioTabList.add(LecturerItem(
            title: lecturers[lecturerIndex].lecturer,
            subTitle: lecturers[lecturerIndex].source,
            fontSize: russianFontSize,
            audios: audios[widget.chapterIndex][lecturerIndex]));
      }
      for (int audioIndex = 0;
          audioIndex < audios[widget.chapterIndex][lecturerIndex].length;
          audioIndex++) {
        audioTabList.add(AudioItem(
          player: widget.player,
          audios: audios[widget.chapterIndex][lecturerIndex],
          index: audioIndex,
          fontSize: russianFontSize,
          isSelected:
              (audios[widget.chapterIndex][lecturerIndex][audioIndex].url ==
                  lastAudioUrl),
          setLastAudioMethodLocal: setLastPlayedAudio,
        ));
      }
    }
    return audioTabList;
  }
}
