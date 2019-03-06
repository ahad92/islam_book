import 'package:flutter/material.dart';
import 'package:kitab_at_tauhid/ui/audio/audio_tab.dart';
import 'package:kitab_at_tauhid/ui/text/text_view.dart';

import '../../book_resource/book.dart';
import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';

List<Widget> getChapterTabBodies(
    int chapterIndex, double russianFontSize, double arabicFontSize) {
  List<Widget> tabBodies = [];
  List<Widget> defaultTabBodies = [];

  for (int i = 0; i < resourceTabNames.length; i++) {
    if (chapters[chapterIndex].tabList[i].text != null) {
      defaultTabBodies.add(TextView(
          header: chapters[chapterIndex].tabList[i].isArabic
              ? chapters[chapterIndex].arabicHeader
              : chapters[chapterIndex].russianHeader,
          text: chapters[chapterIndex].tabList[i].text,
          chapterIndex: chapterIndex,
          fontSize: chapters[chapterIndex].tabList[i].isArabic
              ? arabicFontSize
              : russianFontSize,
          textDirection: chapters[chapterIndex].tabList[i].isArabic
              ? TextDirection.rtl
              : TextDirection.ltr,
          key: tabListKeyList[i]));
    } else {
      defaultTabBodies.add(AudioList(
          header: chapters[chapterIndex].tabList[i].isArabic
              ? chapters[chapterIndex].arabicHeader
              : chapters[chapterIndex].russianHeader,
          chapterIndex: chapterIndex,
          key: tabListKeyList[i]));
    }
  }

  for (int i = 0; i < resourceTabNames.length; i++) {
    tabBodies.add(defaultTabBodies[tabsOrder[i]]);
  }

  return tabBodies;
}

List<Tab> getChapterTabs() {
  List<Tab> tabNames = [];
  List<Tab> defaultTabsNames = [];

  for (int i = 0; i < resourceTabNames.length; i++) {
    defaultTabsNames.add(Tab(key: tabKeyList[i], text: resourceTabNames[i]));
  }

  for (int i = 0; i < resourceTabNames.length; i++) {
    tabNames.add(defaultTabsNames[tabsOrder[i]]);
  }

  return tabNames;
}
