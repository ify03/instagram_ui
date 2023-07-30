import 'package:flutter/material.dart';
import 'package:instagram_ui/Pages/Util/account1.dart';
import 'package:instagram_ui/Pages/Util/account2.dart';
import 'package:instagram_ui/Pages/Util/account3.dart';
import 'package:instagram_ui/Pages/Util/acount4.dart';

import 'Util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                    ),
                  ]),
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '247',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text('Post')
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '3030',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text('Followers')
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '24',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text('Following')
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Koko',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'i create app & games',
                    ),
                  ),
                  Text('@youtube.com/ifebuche/')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text('Edit Profile'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text('Ad Tools'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text('Insights'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'story'),
                  BubbleStories(text: 'story'),
                  BubbleStories(text: 'story'),
                  BubbleStories(text: 'story'),
                ],
              ),
            ),
            const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.video_call,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.grid_3x3_outlined,
                ),
              )
            ]),
            const Expanded(
                child: TabBarView(children: [
              Account1(),
              Account2(),
              Account3(),
              Account4(),
            ]))
          ],
        ),
      ),
    );
  }
}
