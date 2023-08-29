import 'package:flutter/material.dart';

class QuranMadinah extends StatefulWidget {
  const QuranMadinah({super.key});

  @override
  State<QuranMadinah> createState() => _QuranMadinahState();
}

class _QuranMadinahState extends State<QuranMadinah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Al-Baqarah',
              style: TextStyle(
                fontFamily: 'OnQuran',
                fontSize: 28,
                color: Colors.blue.shade900,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 5,
                  ),
                  color: Colors.blue.shade700,
                  child: const Text(
                    '1',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 5,
                  ),
                  color: Colors.blue.shade700,
                  child: const Text(
                    'Halaman 3, Juz 1',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.scatter_plot_rounded),
            color: Theme.of(context).iconTheme.color,
          ),
        ],
      ),
      body: Container(
        child: const Center(
          child: Text('Quran Madinah'),
        ),
      ),
    );
  }
}
