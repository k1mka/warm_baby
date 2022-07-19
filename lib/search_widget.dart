import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.search,
            size: 34,
          ),
          onPressed: onTap,
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
