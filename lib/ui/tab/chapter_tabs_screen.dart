import 'package:flutter/material.dart';

import '../../book_resource/book.dart';
import '../../book_resource/decription.dart';
import '../../util/book_shared_preferences.dart';
import '../common_widgets/custom_icons.dart';
import '../settings/font_size_setting_dialog.dart';
import '../settings/night_mode_button.dart';
import 'chapter_tabs.dart';

class ChapterTabsScreen extends StatefulWidget {
  final int chapterIndex;
  ChapterTabsScreen({Key key, this.chapterIndex}) : super(key: key);

  @override
  _ChapterTabsScreenState createState() => _ChapterTabsScreenState();
}

class _ChapterTabsScreenState extends State<ChapterTabsScreen>
    with SingleTickerProviderStateMixin, BookSharedPreferences {
  ScrollController _scrollViewController;
  TabController _tabController;

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
                IconButton(
                    icon: Icon(CustomIcons.fontsize),
                    onPressed: () {
                      showFontSizeDialog(
                          isArabic: _tabController.index ==
                              tabsOrder.indexOf(defaultArabicMatnTabPosition),
                          updateText: _updateText);
                    }),
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
              widget.chapterIndex, russianFontSize, arabicFontSize),
          controller: _tabController,
        ),
      ),
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
    getFontSizes();
    getTabsOrder();
    getBookmarks();
    getLastChapter();
    _scrollViewController = ScrollController();
    _tabController =
        TabController(vsync: this, length: resourceTabNames.length);
  }

  showFontSizeDialog({bool isArabic, Function updateText}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              FontSizeSetting(isArabic: isArabic, updateText: updateText)
            ],
          );
        });
  }

  _goToPage(index) {
    if (index >= 0 && index < chapters.length) {
      setLastChapter(index);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ChapterTabsScreen(chapterIndex: index)),
      );
    }
  }
}
