class QuranCollection {
  final String assetName;
  final String title;
  final String routeName;

  QuranCollection(this.assetName, this.title, this.routeName);
}

List<QuranCollection> quranCollection = [
  QuranCollection(
    'assets/icons/QuranIconM.png',
    'Madinah',
    'QMadinah',
  ),
  QuranCollection(
    'assets/icons/QuranIconID.png',
    'Indonesia',
    'QIndonesia',
  ),
  QuranCollection(
    'assets/icons/QuranIconPK.png',
    'Per Kata',
    'QuranPK',
  ),
  QuranCollection(
    'assets/icons/QuranIconPA.png',
    'Per Ayat',
    'QuranPA',
  ),
  QuranCollection(
    'assets/icons/QuranIconMT.png',
    'Madinah Tajwid',
    'QuranMT',
  ),
  QuranCollection(
    'assets/icons/QuranIconIT.png',
    'Indonesia Tajwid',
    'QuranIT',
  ),
  QuranCollection(
    'assets/icons/QuranIconPKT.png',
    'Per Kata Tajwid',
    'QuranPKT',
  ),
  QuranCollection(
    'assets/icons/DonasiQuran.png',
    'Donasi Mushaf',
    'DonasiMushaf',
  ),
];
