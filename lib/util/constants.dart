import 'package:flutter/material.dart';

// book_screen
const double mainChapterHeaderFontSize = 20.0;
const double secondaryChapterHeaderFontSize = 16.0;
const double thirdlyChapterHeaderFontSize = 14.0;

// settings_screen
const String resourceSettings = 'Настройки';
const String resourcePlayAndLoadAllAudiosMenuItem =
    'Скачивать и воспроизводить все аудио из главы';

// audio_tab
const String lastPlayedAudioUrl = 'lastPlayedAudioUrl';
const String resourcePlayAllAudios = 'resourcePlayAllAudios';
const String downloadAllChapterAudios = 'Скачать все айдиофайлы';

//tabs_order_screen
const String resourceChooseTabOrder = 'Изменить порядок вкладок в главе';
const String resourceDragAndDropTabs = 'Перетащите элементы';

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
