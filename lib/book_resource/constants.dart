String bookTitle = 'Книга Единобожия';

const List<String> resourceTabNames = [
  'Матн',
  'متن',
  'Шарх',
  'Вопросы',
  'Аудио'
];

List<int> defaultTabsOrder = [0, 1, 2, 3, 4];

const int defaultArabicMatnTabPosition = 1;
const int defaultAudioTabPosition = 4;

List<String> defaultTabsNamesOrder = [
  '${resourceTabNames[0]} (текст книги на русском)',
  '${resourceTabNames[1]} (текст книги на арабском)',
  '${resourceTabNames[2]} (разьяснение на русском)',
  '${resourceTabNames[3]}, рассматриваемые в главе',
  resourceTabNames[4]
];
