class Chapter {
  final String russianTitle;
  final String arabicTitle;
  final List<TabDescription> tabList;

  Chapter({this.russianTitle, this.arabicTitle, this.tabList});
}

class TabDescription {
  final String text;
  final bool isArabic;
  final AudioDescription audioList;

  TabDescription({this.text: null, this.isArabic: false, this.audioList: null});
}

class AudioDescription {}
