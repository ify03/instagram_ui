import 'package:flutter/material.dart';
import 'package:instagram_ui/Pages/Util/bubble_stories.dart';

import 'Util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = ['Micheal', 'Joshua', 'Victor', 'Kenneth', 'caleb'];

  UserHome({super.key});

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
                'Instagram',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'courier',
                    fontSize: 24,
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
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(name: people[index]);
                },
              ),
            ),
          ],
        ));
  }
}
