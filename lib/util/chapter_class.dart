class Chapter {
  final String russianHeader;
  final String arabicHeader;
  final List<TabDescription> tabList;

  Chapter({this.russianHeader, this.arabicHeader, this.tabList});
}

class TabDescription {
  final String text;
  final bool isArabic;
  final List<LecturerDescription> lecturerList;

  TabDescription(
      {this.text: null, this.isArabic: false, this.lecturerList: null});
}

class LecturerDescription {
  final String name;
  final List<AudioDescription> audioList;

  LecturerDescription({this.audioList, this.name: null});
}

class AudioDescription {
  final String name;
  final String description;
  final String address;

  AudioDescription({this.address, this.name: null, this.description: null});
}
