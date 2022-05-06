// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> _counts = <int>[0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
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

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.white,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  void swap(TextEditingController index_1, TextEditingController index_2) {
    Color temp_color = _colors[int.parse(index_1.text)];
    _colors[int.parse(index_1.text)] = _colors[int.parse(index_2.text)];
    _colors[int.parse(index_2.text)] = temp_color;
    int temp_count = _counts[int.parse(index_1.text)];
    _counts[int.parse(index_1.text)] = _counts[int.parse(index_2.text)];
    _counts[int.parse(index_2.text)] = temp_count;
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
                      hintText: '��J�渹',
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
                      hintText: '��J�渹',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      swap(index1Controller_1, index1Controller_2);
                    });
                  },
                  child: Text('�洫'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[0],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('0.�I���ƶq${_counts[0]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[0]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[1],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('1.�I���ƶq${_counts[1]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[1]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[2],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2.�I���ƶq${_counts[2]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[2]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[3],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('3.�I���ƶq${_counts[3]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[3]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[4],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('4.�I���ƶq${_counts[4]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[4]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[5],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('5.�I���ƶq${_counts[5]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[5]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[6],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('6.�I���ƶq${_counts[6]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[6]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[7],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('7.�I���ƶq${_counts[7]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[7]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[8],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('8.�I���ƶq${_counts[8]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[8]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            color: _colors[9],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('9.�I���ƶq${_counts[9]}'),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    setState(() {
                      _counts[9]++;
                    });
                  },
                  child: Text('�I��+1'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
