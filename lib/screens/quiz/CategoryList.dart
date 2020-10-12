import 'package:flutter/material.dart';
import 'package:animations/screens/quiz/CheckBoxes.dart';
import 'package:animations/screens/quiz/DropdownWidget.dart';




class CategoryList extends StatefulWidget {
  @override
  CategoryListState createState() => CategoryListState();
}

class CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['Interest', 'Preferences',];

 List<Widget> category_widgets = [CheckBoxes(), DropdownWidget(),];

  @override
  Widget build(BuildContext context) {

    //final itemScrollController = ItemScrollController();
    //final itemPositionsListener = ItemPositionsListener.create();

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0/2),
          height: 30.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container (
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: index == categories.length -1 ? 20.0 : 0,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Colors.white.withOpacity(0.4)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  categories[index].toString(),
                  style: TextStyle(fontSize: 20, fontFamily: 'Play', fontWeight: FontWeight.normal, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
        category_widgets[selectedIndex],
      ],
    );
  }
}