import 'package:kitab_at_tauhid/util/chapter_class.dart';

List<Chapter> chapters = [
  Chapter(
      russianHeader: """Вступление и предисловие""",
      arabicHeader: """باب فضل التوحيد وما يكفر من الذنوب""",
      tabList: [
        TabDescription(text: """матн qq"""),
        TabDescription(text: """با""", isArabic: true),
        TabDescription(text: """шарх qq"""),
        TabDescription(text: """вопросы qq"""),
        TabDescription(lecturerList: [
          LecturerDescription(audioList: [
            AudioDescription(address: '1'),
            AudioDescription(address: '2'),
            AudioDescription(address: '3')
          ]),
          LecturerDescription(audioList: [
            AudioDescription(address: '1'),
            AudioDescription(address: '2')
          ]),
          LecturerDescription(audioList: [AudioDescription(address: '1')])
        ]),
      ]),
  Chapter(
      russianHeader: """Вступление и предисловие 1""",
      arabicHeader: """باب فضل التوحيد وما يكفر من الذنوب""",
      tabList: [
        TabDescription(text: """матн qq"""),
        TabDescription(text: """با""", isArabic: true),
        TabDescription(text: """шарх qq"""),
        TabDescription(text: """вопросы qq"""),
        TabDescription(lecturerList: [
          LecturerDescription(audioList: [
            AudioDescription(address: '1'),
            AudioDescription(address: '2'),
            AudioDescription(address: '3')
          ]),
          LecturerDescription(audioList: [
            AudioDescription(address: '1'),
            AudioDescription(address: '2')
          ]),
          LecturerDescription(audioList: [AudioDescription(address: '1')])
        ]),
      ]),
  Chapter(
      russianHeader: """Вступление и предисловие 2""",
      arabicHeader: """باب فضل التوحيد وما يكفر من الذنوب""",
      tabList: [
        TabDescription(text: """матн qq"""),
        TabDescription(text: """با""", isArabic: true),
        TabDescription(text: """шарх qq"""),
        TabDescription(text: """вопросы qq"""),
        TabDescription(lecturerList: [
          LecturerDescription(audioList: [
            AudioDescription(address: '1'),
            AudioDescription(address: '2'),
            AudioDescription(address: '3')
          ]),
          LecturerDescription(audioList: [
            AudioDescription(address: '1'),
            AudioDescription(address: '2')
          ]),
          LecturerDescription(audioList: [AudioDescription(address: '1')])
        ]),
      ]),
];
