import 'package:abu_malik_widgets/telegram_channel.dart';
import 'package:flutter/material.dart';

String bookTitle = 'Книга Таухида';

const List<String> tabNames = ['Матн', 'متن', 'Шарх', 'Вопросы', 'Аудио'];

List<int> defaultTabsOrder = [0, 1, 2, 3, 4];
const int defaultArabicMatnTabPosition = 1;

List<String> defaultTabsNamesOrder = [
  '${tabNames[0]} (текст книги на русском)',
  '${tabNames[1]} (текст книги на арабском)',
  '${tabNames[2]} (разьяснение на русском)',
  '${tabNames[3]}, рассматриваемые в главе',
  tabNames[4]
];

List<Lecturer> lecturers = [
  Lecturer('Ринат абу Мухаммад', 'Шарх шейха Салиха Али Шейха',
      'kifayat_al_mustazid'),
  Lecturer(
      'Арсен абу Яхья', 'Шарх шейха аль-Усеймина', 'kitab_tauhid_uthaymeen'),
  Lecturer('Динар абу Идрис', 'Шарх шейха ибн База', 'kitab_tauhid_ibn_baz'),
  Lecturer(
      'Сирадж абу Тальха', 'Шарх шейха аль-Фаузана', 'mulakhas_kitab_tauhid'),
  Lecturer(
      'Ринат абу Мухаммад', 'Шарх шейха аль-Фаузана', 'kitab_tauhid_fawzan')
];

// colors
final Color primaryColor = Colors.indigo;
final Color accentColor = Colors.indigo;
final Color canvasColorLight = Colors.white;
final Color canvasColorDark = Colors.grey[850];
final Color secondaryTextColor = Colors.blueGrey[600];

const String audioIconUrl =
    'https://ia601505.us.archive.org/26/items/kitab_at_tauhid_202002/kitab_at_tauhid.png';

const String resourceAboutAppText = """
السلام عليكم ورحمة الله وبركاته
Данное приложение - это энциклопедия по великой книге Китаб ат-Таухид (Книга Единобожия) шейха ат-Тамими

В нем вы найдете текст (матн) книги на русском и арабском языках, полное толкование (шарх) от шейхов Салиха Али Шейха, аль-Усеймина и других, а также аудиолекции с подробным разбором на русском языке.
Шарх (толкование) состоит из следующих шархов книг по Единобожию:

1) Шарх шейха Салиха Али Шейха, да хранит его Аллах: «Кифаят аль-мустазид». Его шарх был основой этой серии уроков и, соответственно, в них дословно разбиралось и переводилось каждое слово шейха.
2) Шарх шейха аль-’Усаймина, да смилуется над ним Аллах: «аль-Кауль аль-муфид». Его шарх использовался в толковании вопросов (масаиль аль-баб) к каждому разделу. Так как шейх Салих не разбирал вопросы глав, которые являются толкованием шейха Мухаммада на свою же книгу.

Также в качестве вспомогательного материала использовались следующие толкования этой книги:

1) Шарх шейха Ибн База, да смилуется над ним Аллах: «Шарх китаб ат-Таухид»;
2) Шарх шейха аль-Фаузана, да хранит его Аллах: «И’анат аль-мустафид»;
3) Шарх шейха ’Абдур-Рахмана ас-Са’ди, да смилуется над ним Аллах: «аль-Кауль ас-садид»;
4) Шарх шейха ’Абдур-Рахмана бин Хасана, да смилуется над ним Аллах: «Фатх аль-Маджид»;
5) Шарх шейха Сулеймана бин ’АбдуЛлаха, да смилуется над ним Аллах: «Тайсир аль-Азиз».

Материал взят с сайтов daura.com, toislam.ws и alhadis.ru.
""";

// TODO: fix addresses
const String resourceAndroidLink =
    'https://play.google.com/store/apps/details?id=com.abumaliksoft.kitabattauhid';
const String resourceIosLink =
    'https://apps.apple.com/app/kitabattauhid/id1470606469';
const String resourceAndroidAppsUrl =
    'https://play.google.com/store/apps/developer?id=Abu+Malik';
const String resourceIosAppsUrl =
    'https://apps.apple.com/us/developer/abu-malik/id1470606468';
const String resourceAndroidAppId = 'com.abumaliksoft.kitabattauhid';
const String resourceIosAppId = '1470606469';

const String feedbackEmail = 'AbuMalikSoft@gmail.com';

const String resourceShareApp =
    'Скачивайте приложение "Книга Таухида"!\nИзучайте основы своей религии.';
