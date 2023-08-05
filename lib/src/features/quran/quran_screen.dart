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
                  // const SizedBox(height: 10),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: Colors.grey,
                  //       width: 1,
                  //     ),
                  //   ),
                  //   width: 250,
                  //   padding: const EdgeInsets.all(10),
                  //   child: const Directionality(
                  //     textDirection: TextDirection.rtl,
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.stretch,
                  //       children: [
                  //         Text(
                  //           ' إِنَّٱلَّذِينَ كَفَرُواْسَوَآءٌعَلَيۡهِمۡءَأَنذَرۡتَهُمۡ أَمۡ لَمۡ تُنذِرۡهُمۡ ',
                  //           style: TextStyle(
                  //             fontFamily: 'QuranFont',
                  //           ),
                  //           textAlign: TextAlign.justify,
                  //         ),
                  //         Text(
                  //           'لَايُؤۡمِنُونَ ٦ خَتَمَ ٱللَّهُ عَلَىٰ قُلُوبِهِمۡ وَعَلَىٰ سَمۡعِهِمۡۖ وَعَلَىٰٓ',
                  //           style: TextStyle(
                  //             fontFamily: 'QuranFont',
                  //           ),
                  //           textAlign: TextAlign.justify,
                  //         ),
                  //         Text(
                  //           'أَبۡصَٰرِهِمۡ  غِشَٰوَةٞۖ وَلَهُمۡ عَذَابٌ عَظِيمٞ ٧ وَمِنَ ٱلنَّاسِ',
                  //           style: TextStyle(
                  //             fontFamily: 'QuranFont',
                  //           ),
                  //           textAlign: TextAlign.justify,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
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
                            TextSpan(
                              text:
                                  'إِنَّ ٱلَّذِينَ كَفَرُواْسَوَآءٌعَلَيۡهِمۡءَأَنذَرۡتَهُمۡ أَمۡ لَمۡ تُنـذِرۡهُمۡ ',
                              style: TextStyle(
                                fontFamily: 'QuranFont',
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'لَايُؤۡمِنُونَ ٦ خَتَمَ ٱللَّهُ عَلَىٰ قُلُوبِهِمۡ وَعَلَىٰ سَمۡعِهِمۡۖ وَعَلَىٰٓ',
                              style: TextStyle(
                                fontFamily: 'QuranFont',
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' أَبۡصَٰرِهِمۡ  غِشَٰوَةٞۖ وَلَهُمۡ عَذَابٌ عَظِيمٞ  ٧ وَمِنَ ٱلنَّاسِ',
                              style: TextStyle(
                                fontFamily: 'QuranFont',
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' مَن يَقُولُ ءَامَنَّا بِٱللَّهِ وَبِٱلۡيَوۡمِ ٱلۡأٓخِرِ وَمَاهُم بِمُؤۡمِنِينَ ٨',
                              style: TextStyle(
                                fontFamily: 'QuranFont',
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
