import 'package:flutter/material.dart';

class ReelsGrid extends StatelessWidget {
  const ReelsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Color.fromARGB(255, 149, 179, 249),
            ),
          );
        });
  }
}
