import 'package:flutter/material.dart';

// book_screen
const double mainChapterHeaderFontSize = 20.0;
const double secondaryChapterHeaderFontSize = 16.0;
const double thirdlyChapterHeaderFontSize = 14.0;

// settings_screen
const double defaultPadding = 4.0;
const String resourceSettings = 'Настройки';

// audio_tab
const String lastPlayedAudioUrl = 'lastPlayedAudioUrl';

//tabs_order_screen
const String resourceChooseTabOrder = 'Изменить порядок вкладок в главе';
const String resourceDragAndDropTabs = 'Перетащите элементы';

//general
const double textEdgeInset = 16.0;

const String resourceChapterRussian = 'Глава';
const String resourceChapterArabic = 'الفصل';

// book_shared_preferences
const String resourceLastChapter = 'lastChapter';
const String resourceBookmarks = 'bookmarks_sp';
const String resourceIsLecturersAudioDownloaded = 'isLecturersAudioDownloaded';

final List<String> sharedResourceTabList =
    List<String>.generate(10, (int index) => 'sharedResourceTab$index');

// keys
const PageStorageKey chaptersListKey = PageStorageKey('chaptersList');

final List<PageStorageKey> tabListKeyList = List<PageStorageKey>.generate(
    10, (int index) => PageStorageKey('tabListKeyList$index'));

final List<PageStorageKey> tabKeyList = List<PageStorageKey>.generate(
    10, (int index) => PageStorageKey('tabKeyList$index'));

const int defaultArabicMatnTabPosition = 1;
const int defaultAudioTabPosition = 3;
