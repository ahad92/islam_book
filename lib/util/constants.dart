import 'package:flutter/material.dart';

// book_screen
const double mainChapterTitleFontSize = 20.0;
const double secondaryChapterTitleFontSize = 14.0;
const double thirdlyChapterTitleFontSize = 12.0;
const double chapterTitleBorderSize = 4.0;

// chapter_tabs_screen
const double headerFontSizeMultiplier = 1.33;
const textRowHeight = 1.2;

// font_size_setting_dialog
const double fonSizeFontSize = 26.0;
const double minFontSizePercentage = 0.7;
const double maxFontSizePercentage = 1.3;
const String resourceRussianFontSizeText = 'Размер шрифта';
const String resourceArabicFontSizeText = 'حجم الخط';

// audio_tab
const List<String> lecturers = ['Лектор 1', 'Лектор 2', 'Лектор 3'];

// settings_screen
const double defaultListTilePadding = 4.0;
const double increasedListTilePadding = 32.0;
const String resourceSettings = 'Настройки';
const String resourceDownloadAllAudio = 'Загрузить все аудиолекции';

//tabs_order_screen
List<String> defaultTabsNamesOrder = [
  '$resourceMatnRussian ($resourceMatnRussianExplanation)',
  '$resourceMatnArabic ($resourceMatnArabicExplanation)',
  '$resourceSharhRussian ($resourceSharhRussianExplanation)',
  resourceAudio
];

const String resourceMatnRussianExplanation = 'текст книги на русском';
const String resourceMatnArabicExplanation = 'текст книги на арабском';
const String resourceSharhRussianExplanation = 'разьяснение на русском';
const String resourceChooseTabOrder = 'Изменить порядок вкладок в главе';
const String resourceDragAndDropTabs = 'Перетащите элементы';

//general
const double defaultRussianFontSize = 18.0;
const double defaultArabicFontSize = 20.0;

const double textEdgeInset = 16.0;

List<int> defaultTabsOrder = [
  defaultRussianMatnTabPosition,
  defaultArabicMatnTabPosition,
  defaultRussianSharkhTabPosition,
  defaultAudioTabPosition
];

const int defaultRussianMatnTabPosition = 0;
const int defaultArabicMatnTabPosition = 1;
const int defaultRussianSharkhTabPosition = 2;
const int defaultAudioTabPosition = 3;

const String resourceChapterRussian = 'Глава';
const String resourceChapterArabic = 'الفصل';

// book_shared_preferences
const String tab0 = 'tab0';
const String tab1 = 'tab1';
const String tab2 = 'tab2';
const String tab3 = 'tab3';

const String resourceLastChapter = 'lastChapter';
const String resourceRussianFontSize = 'russianFontSize';
const String resourceArabicFontSize = 'arabicFontSize';
const String resourceBookmarks = 'bookmarks';
const String resourceIsLecturersAudioDownloaded = 'isLecturersAudioDownloaded';

// chapter_tabs
const String resourceAudio = 'Аудио';
const String resourceMatnRussian = 'Матн';
const String resourceMatnArabic = 'متن';
const String resourceSharhRussian = 'Шарх';

// keys
const PageStorageKey chaptersListKey = PageStorageKey('chaptersList');
const PageStorageKey audioListKey = PageStorageKey('audioListKey');
const PageStorageKey russianMatnListKey = PageStorageKey('russianMatnListKey');
const PageStorageKey arabicMatnListKey = PageStorageKey('arabicMatnListKey');
const PageStorageKey russianSharkhListKey =
    PageStorageKey('russianSharkhListKey');
const Key audioTabKey = Key('audioTabKey');
const Key russianMatnTabKey = Key('russianMatnTabKey');
const Key arabicMatnTabKey = Key('arabicMatnTabKey');
const Key russianSharkhTabKey = Key('russianSharkhTabKey');

// colors
const Color primaryColor = Colors.indigo;
