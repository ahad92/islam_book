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
const double shareIconSize = 32.0;

// audio_tab
const String lastPlayedAudioUrl = 'lastPlayedAudioUrl';

// font_size_setting_dialog
const int fontSizeDivisionNumber = 10;
const double fonSizeFontSize = 26.0;
const double minFontSizePercentage = 0.5;
const double maxFontSizePercentage = 1.5;
const String resourceRussianFontSizeText = 'Размер шрифта';
const String resourceArabicFontSizeText = 'حجم الخط';

// settings_screen
const double defaultPadding = 4.0;
const double largePadding = 32.0;
const String resourceSettings = 'Настройки';
const String resourceAboutAppMenuItem = 'О приложении';
const String resourceFeedbackMenuItem = 'Обратная связь';
const String resourceAppVersion = 'Версия приложения';
const String resourceDeviceSystemName = 'Операцинная система';
const String resourceDeviceSystemVersion = 'Версия операционной системы';
const String resourceDeviceModel = 'Устройство';
const String resourceEnterYurMessage = 'Введите ваше сообщение здесь';
const String resourceTelegramChannels =
    'Телеграм-каналы с лекциями из этого приложения';
const String resourceDeleteAllFiles = 'Удалить все аудиофайлы';
const String resourceShareAppMenuItem = 'Поделиться';
const String resourceRateAppMenuItem = 'Оценить приложение';
const String resourceOtherAppsMenuItem = 'Другие приложения';
const String resourceShareApp =
    'Скачивайте приложение "Книга Единобожия"!\nИзучайте основы своей религии.';
const String resourceForAndroid = 'Для Android';
const String resourceForIos = 'Для iOS';
const String feedbackEmail = 'abumaliksoft@gmail.com';

// TODO: fix addresses
const String resourceAndroidLink =
    'https://play.google.com/store/apps/details?id=com.abumaliksoft.proramadan';
const String resourceIosLink =
    'https://itunes.apple.com/app/proramadan/id1459750514';
const String resourceAndroidAppsUrl =
    'https://play.google.com/store/apps/developer?id=abumaliksoft';
const String resourceIosAppsUrl =
    'https://play.google.com/store/apps/developer?id=abumaliksoft';
const String resourceAndroidAppId = 'com.abumaliksoft.proramadan';
const String resourceIosAppId = '1459750514';

//tabs_order_screen
const String resourceChooseTabOrder = 'Изменить порядок вкладок в главе';
const String resourceDragAndDropTabs = 'Перетащите элементы';

//general
const double defaultRussianFontSize = 16.0;
const double defaultArabicFontSize = 18.0;

const double textEdgeInset = 16.0;

const String resourceChapterRussian = 'Глава';
const String resourceChapterArabic = 'الفصل';

// book_shared_preferences
const String resourceLastChapter = 'lastChapter';
const String resourceRussianFontSize = 'russianFontSize';
const String resourceArabicFontSize = 'arabicFontSize';
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
