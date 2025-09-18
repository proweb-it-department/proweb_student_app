import 'package:flutter/material.dart';

class TitleReserve extends StatelessWidget {
  final String title;
  final String? trail;
  const TitleReserve({super.key, required this.title, this.trail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          if (trail != null) Text(trail!),
        ],
      ),
    );
  }
}
