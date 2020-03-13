import 'package:abu_malik_widgets/font_size.dart';
import 'package:abu_malik_widgets/night_mode_button.dart';
import 'package:abu_malik_widgets/text.dart';
import 'package:educational_audioplayer/player.dart';
import 'package:flutter/material.dart';

import '../../book_resource/decription.dart';
import '../../book_resource/structure.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import 'audio_tab.dart';

class ChapterScreen extends StatefulWidget {
  final int chapterIndex;
  ChapterScreen({Key key, this.chapterIndex}) : super(key: key);

  @override
  _ChapterScreenState createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen>
    with SingleTickerProviderStateMixin, BookSharedPreferences {
  ScrollController _scrollViewController;
  TabController _tabController;
  Player bottomPlayer;

  _updateText() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              forceElevated: innerBoxIsScrolled,
              actions: <Widget>[
                IconButton(
                    onPressed: () {
                      _goToPage(widget.chapterIndex - 1);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                IconButton(
                    onPressed: () {
                      _goToPage(widget.chapterIndex + 1);
                    },
                    icon: Icon(Icons.arrow_forward_ios)),
                FontSizeSettingButton(
                    context: context,
                    isArabic: _tabController.index ==
                        tabsOrder.indexOf(defaultArabicMatnTabPosition),
                    updateTextFunction: _updateText),
                IconButton(
                    onPressed: () {
                      setBookmark(widget.chapterIndex);
                    },
                    icon: (bookmarks[widget.chapterIndex] == 'false')
                        ? Icon(Icons.bookmark_border)
                        : Icon(
                            Icons.bookmark,
                          )),
                NigthModeButton()
              ],
              bottom: TabBar(
                tabs: getChapterTabs(),
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: getChapterTabBodies(
              chapterIndex: widget.chapterIndex,
              russianFontSize: russianFontSize,
              arabicFontSize: arabicFontSize,
              player: bottomPlayer),
          controller: _tabController,
        ),
      ),
      bottomNavigationBar: bottomPlayer,
    );
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getFontSizes(_updateText);
    getTabsOrder();
    getBookmarks();
    getLastChapter();
    _scrollViewController = ScrollController();
    _tabController = TabController(vsync: this, length: tabNames.length);
    bottomPlayer = Player(
        imageUrl:
            "https://ia601505.us.archive.org/26/items/kitab_at_tauhid_202002/kitab_at_tauhid.png");
  }

  _goToPage(index) {
    if (index >= 0 && index < chapters.length) {
      setLastChapter(index);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ChapterScreen(chapterIndex: index)),
      );
    }
  }
}

List<Widget> getChapterTabBodies(
    {int chapterIndex, double russianFontSize, double arabicFontSize, player}) {
  List<Widget> tabBodies = [];
  List<Widget> defaultTabBodies = [];

  for (int i = 0; i < tabNames.length; i++) {
    if (chapters[chapterIndex].tabList[i].text != null) {
      defaultTabBodies.add(BookTextWithHeader(
          header: chapters[chapterIndex].tabList[i].isArabic
              ? chapters[chapterIndex].arabicHeader
              : chapters[chapterIndex].russianHeader,
          text: chapters[chapterIndex].tabList[i].text,
          shareText: chapters[chapterIndex].tabList[i].shareText,
          preHeader: chapterIndex == 0
              ? ''
              : '${chapters[chapterIndex].tabList[i].isArabic ? resourceChapterArabic : resourceChapterRussian} $chapterIndex',
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
          key: tabListKeyList[i],
          player: player));
    }
  }

  for (int i = 0; i < tabNames.length; i++) {
    tabBodies.add(defaultTabBodies[tabsOrder[i]]);
  }

  return tabBodies;
}

List<Tab> getChapterTabs() {
  List<Tab> newTabNames = [];
  List<Tab> defaultTabsNames = [];

  for (int i = 0; i < tabNames.length; i++) {
    defaultTabsNames.add(Tab(key: tabKeyList[i], text: tabNames[i]));
  }

  for (int i = 0; i < tabNames.length; i++) {
    newTabNames.add(defaultTabsNames[tabsOrder[i]]);
  }

  return newTabNames;
}
