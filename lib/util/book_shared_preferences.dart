import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../book_resource/decription.dart';
import '../book_resource/structure.dart';
import 'constants.dart';

List<String> bookmarks = List<String>.filled(chapters.length, 'false');
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

  getTabsOrder() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (int i = 0; i < tabNames.length; i++) {
      tabsOrder[i] = (prefs.getInt(sharedResourceTabList[i]) ?? i);
    }
  }

  setTabsOrder() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (int i = 0; i < tabNames.length; i++) {
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
