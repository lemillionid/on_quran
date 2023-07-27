import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/features/qiblah/qiblah_error.dart';
import 'package:on_quran_uiux/src/features/qiblah/qiblah_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class QiblahPage extends ConsumerStatefulWidget {
  const QiblahPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QiblahPageState();
}

class _QiblahPageState extends ConsumerState<QiblahPage> {
  bool hasPermission = false;
  final hasPermissionProvider = StateProvider<bool>((ref) {
    return false;
  });

  @override
  void initState() {
    super.initState();
    getPermission();
  }

  Future getPermission() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      var status = await Permission.location.status;
      if (status.isGranted) {
        setState(() {
          hasPermission = true;
        });
      } else {
        Permission.location.request().then((value) {
          setState(() {
            hasPermission = (value == PermissionStatus.granted);
          });
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (hasPermission) {
          return const QiblahScreen();
        } else {
          return const QiblahError();
        }
      },
      future: getPermission(),
    );
  }
}
