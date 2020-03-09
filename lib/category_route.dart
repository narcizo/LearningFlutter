import 'package:flutter/material.dart';
import 'package:hellorectangle/category.dart';

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static const _baseIcons = <IconData>[
    Icons.cake,
    Icons.accessibility,
    Icons.favorite,
    Icons.beach_access,
    Icons.credit_card,
    Icons.access_alarm,
    Icons.laptop_mac,
    Icons.archive,
  ];

  @override
  Widget build(BuildContext context) {
    final _categories = <Widget>[];
    for (var i = 0; i < _categoryNames.length; i++) {
      _categories.add(new Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: _baseIcons[i]));
    }

    final listView = ListView(
      children: _categories,
    );

    final appBar = AppBar(
      title: const Text('Unit Converter'),
      centerTitle: true,
//      backgroundColor: Colors.black45,
      backgroundColor: Colors.blueGrey,
      textTheme: TextTheme(title: TextStyle(fontSize: 30, fontFamily: 'Hind')),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: appBar,
      body: listView,
    );
  }
}
