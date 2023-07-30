import 'package:flutter/material.dart';

import 'Util/reelsgrid.dart';

class UserReels extends StatelessWidget {
  const UserReels({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reels',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'courier',
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(24.0),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Expanded(
              child: ReelsGrid(),
            ),
          ],
        ));
  }
}
