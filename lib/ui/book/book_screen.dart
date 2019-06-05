import 'package:flutter/material.dart';

import '../../book_resource/structure.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import '../common_widgets/divider.dart';
import '../settings/night_mode_button.dart';
import '../settings/settings_screen.dart';
import '../tab/chapter_tabs_screen.dart';

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
        body: Scrollbar(
            key: chaptersListKey,
            child: ListView.builder(
                itemCount: chapters.length,
                itemBuilder: (BuildContext context, int position) {
                  return Container(
                      color: position == lastChapter
                          ? Theme.of(context).highlightColor
                          : null,
                      child: DividedContainer(
                          child: ListTile(
                        title: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                    position == 0
                                        ? ''
                                        : '$resourceChapterRussian ${position}',
                                    style: TextStyle(
                                        fontSize: thirdlyChapterHeaderFontSize,
                                        color: Theme.of(context)
                                            .unselectedWidgetColor)),
                                Icon(Icons.bookmark,
                                    color: (bookmarks[position] == 'false')
                                        ? Color(0x00000000)
                                        : Theme.of(context).accentColor)
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: defaultPadding,
                                    bottom: defaultPadding),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      chapters[position].russianHeader,
                                      style: TextStyle(
                                          fontSize: mainChapterHeaderFontSize,
                                          fontWeight: FontWeight.bold),
                                    ))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(chapters[position].arabicHeader,
                                    style: TextStyle(
                                        fontSize:
                                            secondaryChapterHeaderFontSize,
                                        color: Theme.of(context)
                                            .unselectedWidgetColor)))
                          ],
                        ),
                        onTap: () {
                          setLastChapter(position);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ChapterTabsScreen(chapterIndex: position)),
                          );
                        },
                        onLongPress: () {
                          setBookmark(position);
                        },
                      )));
                })));
  }
}
