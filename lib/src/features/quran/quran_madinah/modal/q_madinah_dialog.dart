import 'package:flutter/material.dart';

class QmadinahDialog extends StatefulWidget {
  const QmadinahDialog({super.key});

  @override
  State<QmadinahDialog> createState() => _QmadinahDialogState();
}

class _QmadinahDialogState extends State<QmadinahDialog>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      content: SizedBox(
        height: 400,
        child: Column(
          children: [
            TextFormField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: 'Pilih Surat atau Juz',
                prefixIcon: Icon(Icons.search_rounded),
                suffixIcon: Icon(Icons.close_outlined),
              ),
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.purple,
              indicatorColor: Colors.deepPurple,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(
                  text: "SURAT",
                ),
                Tab(
                  text: "JUZ",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
