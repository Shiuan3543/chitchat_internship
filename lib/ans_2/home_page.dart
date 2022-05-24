import 'package:chitchat_internship/ans_2/button_style.dart';
import 'package:chitchat_internship/ans_2/widget_list.dart';
import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  final List<Color> _colors = <Color>[
    Colors.deepPurple,
    Colors.indigoAccent,
    Colors.lime,
    Colors.brown,
    Colors.limeAccent,
    Colors.purpleAccent,
    Colors.deepOrangeAccent,
    Colors.orangeAccent,
    Colors.green,
    Colors.teal,
  ];
  final index1Controller_1 = TextEditingController();
  final index1Controller_2 = TextEditingController();

  void swap(TextEditingController index_1, TextEditingController index_2) {
    //Ans2 temp = Ans2(color: color, id: id)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  width: 120.0,
                  height: 48.0,
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: index1Controller_1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '輸入行號',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  width: 120.0,
                  height: 48.0,
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: index1Controller_2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '輸入行號',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: RaisedButtonStyle().raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      swap(index1Controller_1, index1Controller_2);
                    });
                  },
                  child: Text('交換'),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: List.generate(_colors.length, (index) {
                return Ans2(color: _colors[index], id: index);
              }),
            ),
          )
        ],
      ),
    );
  }
}
