import 'package:advanced_quiz_app/model/color_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../homescreen/home.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.white,
    Colors.grey
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
        centerTitle: true,
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(colors.length, (index) {
          return Consumer<ColorModel>(builder: (context, value, child) {
            return InkWell(
              onTap: () => value.setColor(colors[index]),
              child: Ink(height: 100, width: 100, color: this.colors[index]),
            );
          });
        }),
      ),
    );
  }
}
