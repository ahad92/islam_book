import 'package:flutter/material.dart';

import '../../book_resource/book.dart';
import '../../util/book_shared_preferences.dart';
import '../../util/constants.dart';
import 'chapter_tabs_screen.dart';

class BookScreen extends StatefulWidget {
  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> with BookSharedPreferences {
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    getBookmarks();
    getLastChapter();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            key: PageStorageKey(chaptersListKey),
            itemCount: chapters.length,
            itemBuilder: (BuildContext context, int position) {
              return Container(
                  color: position == lastChapter
                      ? Theme.of(context).highlightColor
                      : null,
                  child: ListTile(
                    title: Text(
                      chapters[position].russianTitle,
                      style: TextStyle(fontSize: defaultRussianTextSize),
                    ),
                    subtitle: Text(chapters[position].arabicTitle,
                        style: TextStyle(fontSize: defaultArabicTextSize)),
                    leading: Column(
                      children: <Widget>[
                        CircleAvatar(
                          child: Text((position + 1).toString(),
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Icon(Icons.bookmark,
                            color: (bookmarks[position] == 'false')
                                ? Color(0x00000000)
                                : Theme.of(context).accentColor)
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
                  ));
            }));
  }
}
