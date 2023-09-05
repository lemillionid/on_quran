import 'package:flutter/material.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/dummy_cori.dart';

class QMadinahTab extends StatefulWidget {
  const QMadinahTab({super.key});

  @override
  State<QMadinahTab> createState() => _QMadinahTabState();
}

class _QMadinahTabState extends State<QMadinahTab> {
  Qori? selectedQori;
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(displayWidth * .05),
      height: displayWidth * .155,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
          GestureDetector(
            onTap: () {
              _selectQori(context);
            },
            child: Container(
              width: displayWidth * .65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    primaryColor,
                    Colors.lightBlueAccent,
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      selectedQori?.name ?? 'Pilih Qori',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.repeat_rounded),
          ),
        ],
      ),
    );
  }

  void _selectQori(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: qoriList.length,
          itemBuilder: (context, index) {
            final qori = qoriList[index];
            return ListTile(
              title: Text(qori.name),
              onTap: () {
                setState(() {
                  selectedQori = qori;
                });
                Navigator.pop(context);
              },
            );
          },
        );
      },
    );
  }
}
