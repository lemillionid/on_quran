import 'package:flutter/material.dart';
import 'package:on_quran_uiux/routes/routes_screen.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor, secondaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/masjid-pogung-dalangan-pEHjWZFhyN8-unsplash.jpg'),
              fit: BoxFit.cover,
              opacity: 0.2,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Text(
                        'v.1.0.0',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                  fontFamily: 'Tajawal',
                                ),
                      ),
                      Text(
                        'onQuran',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                color: Colors.white,
                                fontFamily: 'OnQuran',
                                fontSize: 72),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'Rasulullah ﷺ bersabda :',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                      '“Siapa saja membaca satu huruf dari Kitabullah (Alquran) maka dia akan mendapat satu kebaikan. Sedangkan satu kebaikan dilipatkan kepada sepuluh semisalnya. Aku tidak mengatakan alif lâm mîm satu huruf. Akan tetapi, alif satu huruf, lâm satu huruf, dan mîm satu huruf.”',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300,
                          )),
                  const SizedBox(height: 10),
                  Text(
                    'HR. At-Tirmidzi',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 25),
                  FloatingActionButton.extended(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black54,
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteGenerator.tabScreen,
                      );
                    },
                    label: const Text(
                      '   lanjutkan   ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
