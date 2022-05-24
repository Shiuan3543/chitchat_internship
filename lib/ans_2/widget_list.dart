import 'package:flutter/material.dart';

import 'button_style.dart';

class Ans2 extends StatefulWidget {
  Ans2({Key? key, required this.color, required this.id}) : super(key: key);
  final Color color;
  final int id;
  @override
  State<Ans2> createState() => _Ans2State();
}

class _Ans2State extends State<Ans2> {
  int _counts = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: widget.color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('${widget.id}.點擊數量${_counts}'),
          ElevatedButton(
            style: RaisedButtonStyle().raisedButtonStyle,
            onPressed: () {
              setState(() {
                _counts++;
              });
            },
            child: Text('點擊+1'),
          )
        ],
      ),
    );
  }
}
