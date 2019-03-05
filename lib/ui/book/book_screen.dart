import 'package:flutter/material.dart';
import 'package:kitab_at_tauhid/ui/text/chapter_tabs_screen.dart';

import '../../book_resource/book.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../settings/night_mode_button.dart';
import '../settings/settings_screen.dart';

class BookScreen extends StatefulWidget {
  final String title;
  BookScreen({Key key, this.title}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> with BookSharedPreferences {
  @override
  void initState() {
    super.initState();
    getBookmarks();
    getLastChapter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  ),
            ),
            NigthModeButton(),
          ],
        ),
        body: Container(
            child: ListView.builder(
                key: chaptersListKey,
                itemCount: chapters.length,
                itemBuilder: (BuildContext context, int position) {
                  return Container(
                      color: position == lastChapter
                          ? Theme.of(context).highlightColor
                          : null,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Theme.of(context).dividerColor,
                                    width: chapterHeaderBorderSize)),
                          ),
                          child: ListTile(
                            title: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                        '$resourceChapterRussian ${position + 1} ',
                                        style: TextStyle(
                                            fontSize:
                                                thirdlyChapterHeaderFontSize,
                                            color: Theme.of(context)
                                                .unselectedWidgetColor,
                                            fontWeight: FontWeight.bold)),
                                    Icon(Icons.bookmark,
                                        color: (bookmarks[position] == 'false')
                                            ? Color(0x00000000)
                                            : Theme.of(context).accentColor)
                                  ],
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 4.0, bottom: 4.0),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          chapters[position].russianHeader,
                                          style: TextStyle(
                                              fontSize:
                                                  mainChapterHeaderFontSize,
                                              fontWeight: FontWeight.bold),
                                        ))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(chapters[position].arabicHeader,
                                        style: TextStyle(
                                            fontSize:
                                                secondaryChapterHeaderFontSize,
                                            color: Theme.of(context)
                                                .unselectedWidgetColor,
                                            fontWeight: FontWeight.bold)))
                              ],
                            ),
                            onTap: () {
                              setLastChapter(position);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChapterTabsScreen(
                                        chapterIndex: position)),
                              );
                            },
                            onLongPress: () {
                              setBookmark(position);
                            },
                          )));
                })));
  }
}
