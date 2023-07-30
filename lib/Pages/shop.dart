import 'package:flutter/material.dart';

import 'Util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.all(8),
            child: Row(children: [
              Text(
                'Shop',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu)
                ],
              )
            ]),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
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
            Expanded(
              child: ShopGrid(),
            ),
          ],
        ));
  }
}
