import 'package:flutter/material.dart';

class Signature extends StatelessWidget {
  const Signature({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('CA',
            style: TextStyle(
              fontSize: 30,
            )),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}
