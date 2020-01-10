import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String tag;
  const Tag(this.tag);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4, top: 4),
        child: Material(
          color: Colors.blueGrey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: Padding(
              padding: EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 4),
              child: Text(
                this.tag,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
        ));
  }
}
