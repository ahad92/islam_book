import 'package:flutter/material.dart';
import 'package:kitab_at_tauhid/ui/audio/audio_tab.dart';
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
        chapterIndex: chapterIndex,
        fontSize: russianFontSize,
        textDirection: TextDirection.ltr,
        key: russianMatnListKey),
    TextView(
        header: chapters[chapterIndex].arabicTitle,
        text: chapters[chapterIndex].arabicMatn,
        chapterIndex: chapterIndex,
        fontSize: arabicFontSize,
        textDirection: TextDirection.rtl,
        key: arabicMatnListKey),
    TextView(
        header: '1',
        text: '1',
        chapterIndex: chapterIndex,
        fontSize: russianFontSize,
        textDirection: TextDirection.ltr,
        key: russianSharkhListKey),
    AudioList(key: audioListKey),
  ];

  for (int i = 0; i < defaultTabsOrder.length; i++) {
    tabBodies.add(defaultTabBodies[tabsOrder[i]]);
  }

  return tabBodies;
}

List<Tab> getChapterTabs() {
  List<Tab> tabs = [];

  List<Tab> defaultTabs = [
    Tab(key: russianMatnTabKey, text: resourceMatnRussian),
    Tab(
      key: arabicMatnTabKey,
      text: resourceMatnArabic,
    ),
    Tab(key: russianSharkhTabKey, text: resourceSharhRussian),
    Tab(key: audioTabKey, text: resourceAudio),
  ];

  for (int i = 0; i < defaultTabsOrder.length; i++) {
    tabs.add(defaultTabs[tabsOrder[i]]);
  }

  return tabs;
}
