import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/features/qiblah/qiblah_page.dart';
import 'package:permission_handler/permission_handler.dart';

class QiblahError extends ConsumerWidget {
  const QiblahError({super.key});

  Future requestLocationPermission() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      return const QiblahPage();
    } else {
      return const QiblahError();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Oopss!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Kamu belum mengaktifkan Izin Lokasi'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => requestLocationPermission(),
              child: const Text('Aktifkan Izin Lokasi'),
            ),
          ],
        ),
      ),
    );
  }
}
