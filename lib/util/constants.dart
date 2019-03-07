import 'package:flutter/material.dart';

// book_screen
const double mainChapterHeaderFontSize = 20.0;
const double secondaryChapterHeaderFontSize = 16.0;
const double thirdlyChapterHeaderFontSize = 14.0;
const double chapterHeaderBorderSize = 4.0;

// chapter_tabs_screen
const double mainHeaderFontSizeMultiplier = 1.2;
const double secondaryHeaderFontSizeMultiplier = 0.85;
const textRowHeight = 1.2;

// audio_tab
const double audioIconSize = 48.0;

// font_size_setting_dialog
const double fonSizeFontSize = 26.0;
const double minFontSizePercentage = 0.7;
const double maxFontSizePercentage = 1.3;
const String resourceRussianFontSizeText = 'Размер шрифта';
const String resourceArabicFontSizeText = 'حجم الخط';

// settings_screen
const double defaultPadding = 4.0;
const double largePadding = 32.0;
const String resourceSettings = 'Настройки';
const String resourceDownloadAllAudio = 'Загрузить все аудиолекции';

//tabs_order_screen
const String resourceChooseTabOrder = 'Изменить порядок вкладок в главе';
const String resourceDragAndDropTabs = 'Перетащите элементы';

//general
const double defaultRussianFontSize = 16.0;
const double defaultArabicFontSize = 18.0;

const double textEdgeInset = 16.0;

const String resourceChapterRussian = 'Глава';
const String resourceChapterArabic = 'الفصل';
const String resourceLectureRussian = 'Лекция';

// book_shared_preferences
const String resourceLastChapter = 'lastChapter';
const String resourceRussianFontSize = 'russianFontSize';
const String resourceArabicFontSize = 'arabicFontSize';
const String resourceBookmarks = 'bookmarks';
const String resourceIsLecturersAudioDownloaded = 'isLecturersAudioDownloaded';

final List<String> sharedResourceTabList =
    List<String>.generate(10, (int index) => 'sharedResourceTab$index');

// keys
const PageStorageKey chaptersListKey = PageStorageKey('chaptersList');

final List<PageStorageKey> tabListKeyList = List<PageStorageKey>.generate(
    10, (int index) => PageStorageKey('tabListKeyList$index'));

final List<PageStorageKey> tabKeyList = List<PageStorageKey>.generate(
    10, (int index) => PageStorageKey('tabKeyList$index'));
