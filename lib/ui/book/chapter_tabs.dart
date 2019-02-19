import 'package:flutter/material.dart';
import 'package:kitab_at_tauhid/ui/audio/chapter_audio.dart';
import 'package:kitab_at_tauhid/ui/text/text_view.dart';

import '../../book_resource/book.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';

List<Widget> getChapterTabBodies(
    int chapterIndex, double russianFontSize, double arabicFontSize) {
  List<Widget> tabBodies = [];

  List<Widget> defaultTabBodies = [
    TextView(
        header: chapters[chapterIndex].russianTitle,
        text: chapters[chapterIndex].russianMatn,
        fontSize: russianFontSize,
        keyString: russianMatnListKey),
    TextView(
        header: chapters[chapterIndex].arabicTitle,
        text: chapters[chapterIndex].arabicMatn,
        fontSize: arabicFontSize,
        keyString: arabicMatnListKey),
    TextView(
        header: '1',
        text: '1',
        fontSize: russianFontSize,
        keyString: russianSharkhListKey),
    AudioList(chapterAudioListKey),
  ];

  for (int i = 0; i < tabNum; i++) {
    tabBodies.add(defaultTabBodies[tabsOrder[i]]);
  }

  return tabBodies;
}

List<Tab> getChapterTabs() {
  List<Tab> tabs = [];

  List<Tab> defaultTabs = [
    Tab(text: resourceMatnRussian),
    Tab(
      text: resourceMatnArabic,
    ),
    Tab(text: resourceSharhRussian),
    Tab(
      text: resourceAudio,
    ),
  ];

  for (int i = 0; i < tabNum; i++) {
    tabs.add(defaultTabs[tabsOrder[i]]);
  }

  return tabs;
}
