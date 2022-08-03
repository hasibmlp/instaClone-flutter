import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String text;

  Stories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
