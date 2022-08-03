import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  UserPost({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // profile Photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 450,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),

        // liked by
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: const [
              Text('Liked by '),
              Text(
                'john',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'Others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        // commenting

        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: 'name',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' roses are red and sky are blue why are you still single friend')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
