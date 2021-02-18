import 'package:flutter/material.dart';

class InfoCardStyle extends StatelessWidget {
  InfoCardStyle({@required this.childMateus});

  final Widget childMateus;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childMateus,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}
