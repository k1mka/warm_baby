import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.search,
            size: 34,
          ),
          onPressed: () {
            print('Поиск');
          },
        ),
        const Text(
          'Search',
          style: TextStyle(
              fontSize: 24, fontFamily: 'Montserrat', color: Colors.black),
        ),
      ],
    );
  }
}
