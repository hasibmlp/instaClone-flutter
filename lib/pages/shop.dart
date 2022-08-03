import 'package:flutter/material.dart';
import 'package:insta_clone/util/shop_gird.dart';

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Shop'),
            Row(
              children: const [
                Icon(Icons.calendar_today_rounded),
                Icon(Icons.menu)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
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
          Expanded(child: ShopGrid())
        ],
      ),
    );
  }
}
