class Chapter {
  final String russianHeader;
  final String arabicHeader;
  final List<TabDescription> tabList;

  Chapter({this.russianHeader, this.arabicHeader, this.tabList});
}

class TabDescription {
  final String text;
  final bool isArabic;
  final AudioDescription audioList;

  TabDescription({this.text: null, this.isArabic: false, this.audioList: null});
}

class AudioDescription {}
