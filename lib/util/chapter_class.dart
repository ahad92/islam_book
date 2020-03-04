class Chapter {
  final String russianHeader;
  final String arabicHeader;
  final List tabList;

  Chapter({this.russianHeader, this.arabicHeader, this.tabList});
}

class TabDescription {
  final String text;
  final String shareText;
  final bool isArabic;
  final bool isAudio;

  TabDescription(
      {this.text, this.isArabic: false, this.isAudio: false, this.shareText});
}

class Lecturer {
  final String lecturer;
  final String source;
  final String telegramChannel;

  Lecturer(this.lecturer, this.source, this.telegramChannel);
}
