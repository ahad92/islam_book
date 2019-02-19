import 'package:flutter/material.dart';
import 'package:kitab_at_tauhid/ui/book/chapter_tabs.dart';

import '../../book_resource/book.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../settings/night_mode_button.dart';
import 'text_size_setting_dialog.dart';

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
              title: Text(
                '${widget.chapterIndex + 1} / ${chapters.length}',
                style: TextStyle(fontSize: chapterAppBarTextSize),
              ),
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
                  icon: Icon(Icons.text_fields),
                  onPressed: () {
                    showTextSizeDialog(_updateText);
                  },
                ),
                IconButton(
                    onPressed: () {
                      setBookmark(widget.chapterIndex);
                    },
                    icon: (bookmarks[widget.chapterIndex] == 'false')
                        ? Icon(Icons.bookmark_border)
                        : Icon(Icons.bookmark)),
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
    _tabController = TabController(vsync: this, length: tabNum);
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

  showTextSizeDialog(Function updateText) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[TextSizeSetting(updateText)],
          );
        });
  }
}
