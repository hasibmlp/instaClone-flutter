import 'package:flutter/material.dart';
import 'package:insta_clone/util/bubble_stories.dart';
import 'package:insta_clone/util/user_posts.dart';

class UserHome extends StatelessWidget {
  // users information
  final List people = [
    'steve',
    'zuckerburg',
    'tony_stark',
    'tony_stark',
    'natasha_official',
    'job',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('INSTAGRAM'),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return Stories(text: people[index]);
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(name: people[index]);
                }),
          )
        ],
      ),
    );
  }
}
