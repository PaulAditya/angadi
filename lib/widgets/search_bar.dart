import 'package:angadi/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  SearchBar(this.hintText);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    TextEditingController controller = TextEditingController();
    return Container(
      padding: EdgeInsets.all(width * 0.05),
      child: TextField(
        enableInteractiveSelection: false,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              TextStyle(color: Color(0xff6e7faa), fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xff6e7faa),
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.filter_list),
            color: Color(0xff6e7faa),
            onPressed: () =>
                Navigator.of(context).pushNamed(FilterScreen.routeName),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 0.0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
