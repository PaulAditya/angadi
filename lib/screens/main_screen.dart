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
          children: [
            SearchBar('Find Restaurants'),
          ],
        ),
      ),
    );
  }
}
