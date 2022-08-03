import 'package:flutter/material.dart';
import 'package:insta_clone/util/search_grid.dart';

class UserSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Row(
              children: [
                const Icon(Icons.search),
                Container(
                  child: const Text(' search'),
                )
              ],
            ),
          ),
        ),
      ),
      body: SearchGrid(),
    );
  }
}
