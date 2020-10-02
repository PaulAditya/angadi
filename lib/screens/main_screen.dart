import 'package:angadi/widgets/cuisine.dart';
import 'package:angadi/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const routeName = 'MainScreen';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar('Find Restaurants'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Trending',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CuisineCard(),
                  CuisineCard(),
                  CuisineCard(),
                  CuisineCard(),
                  CuisineCard(),
                  CuisineCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
