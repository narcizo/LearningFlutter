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

  @override
  Widget build(BuildContext context) {
    final listView = Container(
      child: Center(
        child: Category(
          name: 'cake',
          color: Colors.green,
          iconLocation: Icons.cake,
        ),
      ),
    );

    final appBar = AppBar(
      title: const Text('Unity Converter App'),
      centerTitle: true,
      backgroundColor: Colors.black45,
      textTheme: TextTheme(title: TextStyle(fontSize: 23, fontFamily: 'Hind')),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: appBar,
      body: listView,
    );
  }
}
