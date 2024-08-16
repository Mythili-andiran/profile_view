import 'package:flutter/material.dart';

class MyCardList extends StatefulWidget {
  const MyCardList({super.key});

  @override
  State<MyCardList> createState() => _MyCardListState();
}

class _MyCardListState extends State<MyCardList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(icons[index]), // Display icon
          title: Text(items[index]),
          trailing: const Icon(Icons.keyboard_arrow_right_outlined),
          onTap: () {
            // Empty onTap makes the items clickable without action
          },
        );
      },
    );
  }

  final List<String> items = [
    'Favourites',
    'Downloads',
    'Language',
    'Location',
    'Clear Cache',
    'Clear History',
    'Logout',
  ];

  final List<IconData> icons = [
    Icons.favorite,
    Icons.download,
    Icons.language,
    Icons.location_on,
    Icons.delete,
    Icons.history,
    Icons.logout,
  ];
}
