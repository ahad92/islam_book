import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../book_resource/book.dart';
import '../book_resource/decription.dart';
import 'constants.dart';

List<String> bookmarks = List<String>.filled(chapters.length, 'false');
double russianFontSize = defaultRussianFontSize;
double arabicFontSize = defaultArabicFontSize;
List<int> tabsOrder = defaultTabsOrder;
int lastChapter = 0;
String lastAudioUrl = '';

mixin BookSharedPreferences<T extends StatefulWidget> on State<T> {
  setBookmark(int chapterIndex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if (bookmarks[chapterIndex] == 'false') {
        bookmarks[chapterIndex] = 'true';
      } else {
        bookmarks[chapterIndex] = 'false';
      }
      prefs.setStringList(resourceBookmarks, bookmarks);
    });
  }

  getBookmarks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bookmarks = (prefs.getStringList(resourceBookmarks) ??
          List<String>.filled(chapters.length, 'false'));
    });
  }

  setLastChapter(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setInt(resourceLastChapter, index);
    });
  }

  getLastChapter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      lastChapter = (prefs.getInt(resourceLastChapter) ?? 0);
    });
  }

  setRussianFontSize(double size) async {
    russianFontSize = size;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setDouble(resourceRussianFontSize, russianFontSize);
    });
  }

  setArabicFontSize(double size) async {
    arabicFontSize = size;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setDouble(resourceArabicFontSize, arabicFontSize);
    });
  }

  getFontSizes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      russianFontSize =
          (prefs.getDouble(resourceRussianFontSize) ?? defaultRussianFontSize);
      arabicFontSize =
          (prefs.getDouble(resourceArabicFontSize) ?? defaultArabicFontSize);
    });
  }

  getTabsOrder() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (int i = 0; i < resourceTabNames.length; i++) {
      tabsOrder[i] = (prefs.getInt(sharedResourceTabList[i]) ?? i);
    }
  }

  setTabsOrder() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (int i = 0; i < resourceTabNames.length; i++) {
      prefs.setInt(sharedResourceTabList[i], tabsOrder[i]);
    }
  }

  setLastPlayedAudio(url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (url == '') {
      url = lastAudioUrl;
    }
    setState(() {
      lastAudioUrl = url;
      prefs.setString(lastPlayedAudioUrl, url);
    });
  }

  getLastPlayedAudio() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      lastAudioUrl = prefs.getString(lastPlayedAudioUrl) ?? '';
    });
  }
}
