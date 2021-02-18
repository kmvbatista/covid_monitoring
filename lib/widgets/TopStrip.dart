import 'package:flutter/material.dart';

class TopStrip extends StatelessWidget {
  TopStrip({@required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10,
      color: color,
      margin: EdgeInsets.only(bottom: 5),
    );
  }
}
