import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';

class QuranScreen extends ConsumerStatefulWidget {
  const QuranScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuranScreenState();
}

class _QuranScreenState extends ConsumerState<QuranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: kPaddingOnQuran,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Quran Test',
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    width: 350,
                    padding: const EdgeInsets.all(10),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            //Baris1
                            TextSpan(
                              text:
                                  'إِنَّ ٱلَّذِينَ كَفَرُواْسَوَآءٌعَلَيۡهِمۡءَأَنذَرۡتَهُمۡ أَمۡ لَمۡ تُنـذِرۡهُمۡ ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris2
                            TextSpan(
                              text:
                                  'لَايُؤۡمِنُونَ ٦ خَتَمَ ٱللَّهُ عَلَىٰ قُلُوبِهِمۡ وَعَلَىٰ سَمۡعِهِمۡۖ وَعَلَىٰٓ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris3
                            TextSpan(
                              text:
                                  ' أَبۡصَٰرِهِمۡ  غِشَٰوَةٞۖ وَلَهُمۡ عَذَابٌ عَظِيمٞ  ٧ وَمِنَ ٱلنَّاسِ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris4
                            TextSpan(
                              text:
                                  ' مَن يَقُولُ ءَامَنَّا بِٱللَّهِ وَبِٱلۡيَوۡمِ ٱلۡأٓخِرِ وَمَاهُم بِمُؤۡمِنِينَ ٨',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris5
                            TextSpan(
                              text:
                                  ' يُخَٰدِ عُونَ ٱللَّهَ وَٱلَّذِينَ ءَامَنُواْ وَمَايَخۡدَعُوـنَ إِلَّآ أَنفُسَهُمۡ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris6
                            TextSpan(
                              text:
                                  ' وَمَا يَشۡعُرُونَ ٩ فِي قُلُوبِهِم مَّرَضٞ فَزَادَهُـمُ ٱللَّهُ مَرَضٗـاۖ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris7
                            TextSpan(
                              text:
                                  ' وَلَهُمۡ عَذَابٌ أَلِيمُۢ بِمَا كَـانُواْ يَـكۡذِبُوـنَ ١٠ وَإِذَاقِيلَ لَهُمۡ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris8
                            TextSpan(
                              text:
                                  ' لَاتُفۡسِدُواْ فِي ٱلۡأَرۡضِ قَالُوٓاْإِنَّمَانَحۡنُ مُصۡلِحُونَ ١١ أَلَآإِنَّهُمۡ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris9
                            TextSpan(
                              text:
                                  ' هُـمُ ٱلۡمُفۡسِدُونَ وَلَٰكِن لَّايَشۡعُرُوـنَ ١٢ وَإِذَاقِيلَ لَهُمۡ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris10
                            TextSpan(
                              text:
                                  ' ءَامِنُواْكَمَآءَامَنَٱلنَّاسُ قَالُوٓاْ أَنُؤۡمِنُ كَمَآءَامَنَٱلسُّفَهَآءُۗ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris11
                            TextSpan(
                              text:
                                  ' أَلَآإِنَّهُمۡ هُمُ ٱلسُّفَهَآءُوَلَٰكِن لَّايَعۡلَمُونَ ١٣ وَإِذَالَقُواْ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris12
                            TextSpan(
                              text:
                                  ' ٱلَّذِينَءَامَنُواْقَالُوٓاْءَامَنَّـا وَإِذَا خَلَوۡاْ إِلَىٰ شَيَٰطِينِهِمۡ قَالُوٓاْإِنَّا',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris13
                            TextSpan(
                              text:
                                  ' مَعَكُمۡ إِنَّمَانَحۡنُمُسۡتَهۡزِءُونَ ١٤ٱللَّهُ يَسۡتَهۡزِئُ بِهِمۡ وَيَمُدُّهُمۡ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris14
                            TextSpan(
                              text:
                                  ' فِي طُغۡيَٰنِهِمۡ يَعۡمَهُونَ ١٥ أُوْلَٰٓئِكَ ٱلَّذِينَ ٱشۡتَرَوُاْ ٱلضَّلَٰلَةَ ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                            //Baris15
                            TextSpan(
                              text:
                                  ' بِٱلۡهُدَىٰ فَمَا رَبِحَت تِّجَٰرَ تُهُمۡ وَمَا كَـانُواْ مُهۡتَدِيـــنَ ١٦ ',
                              style: TextStyle(
                                fontFamily: 'QuranFont2',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
