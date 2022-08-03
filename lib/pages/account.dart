import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey[300], shape: BoxShape.circle),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '350',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('posts'),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '5343',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('folowers')
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '36',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('following')
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // name of bio
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'John',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text('I am software Engineer'),
                ),
                Text(
                  'john@gmail.com',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('Edit profile'),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('Add Toos'),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('Insights'),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
