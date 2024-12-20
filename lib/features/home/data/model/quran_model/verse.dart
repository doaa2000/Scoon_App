class Verse {
  int? id;
  int? verseNumber;
  int? surahId;
  String? verseKey;
  int? juzNumber;
  int? hizbNumber;
  int? rubElHizbNumber;
  dynamic sajdahNumber;
  int? pageNumber;
  String? text;
  String? audioUrl;

  Verse({
    this.id,
    this.verseNumber,
    this.surahId,
    this.verseKey,
    this.juzNumber,
    this.hizbNumber,
    this.rubElHizbNumber,
    this.sajdahNumber,
    this.pageNumber,
    this.text,
    this.audioUrl,
  });

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        id: json['id'] as int?,
        verseNumber: json['verse_number'] as int?,
        surahId: json['surah_id'] as int?,
        verseKey: json['verse_key'] as String?,
        juzNumber: json['juz_number'] as int?,
        hizbNumber: json['hizb_number'] as int?,
        rubElHizbNumber: json['rub_el_hizb_number'] as int?,
        sajdahNumber: json['sajdah_number'] as dynamic,
        pageNumber: json['page_number'] as int?,
        text: json['text'] as String?,
        audioUrl: json['audio_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'verse_number': verseNumber,
        'surah_id': surahId,
        'verse_key': verseKey,
        'juz_number': juzNumber,
        'hizb_number': hizbNumber,
        'rub_el_hizb_number': rubElHizbNumber,
        'sajdah_number': sajdahNumber,
        'page_number': pageNumber,
        'text': text,
        'audio_url': audioUrl,
      };
}
