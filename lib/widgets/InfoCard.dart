import 'package:flutter/material.dart';
import 'package:padawan_flutter_covid/widgets/InfoCardStyle.dart';
import 'package:padawan_flutter_covid/widgets/TopStrip.dart';

class InfoCard extends StatelessWidget {
  InfoCard({
    @required this.mainContent,
    @required this.title,
    @required this.subtitle,
    this.isPositive = false,
  });

  final String mainContent;
  final String title;
  final String subtitle;
  final bool isPositive;

  Widget getLessFocusedText(String text) => Text(
        text,
        style: TextStyle(color: Colors.grey),
      );

  @override
  Widget build(BuildContext context) {
    final Color mainColor = isPositive ? Colors.green : Colors.red;

    return InfoCardStyle(
      childMateus: Column(
        children: [
          TopStrip(
            color: mainColor,
          ),
          getLessFocusedText(title + ' de hoje'),
          Container(
            padding: EdgeInsets.symmetric(vertical: 13),
            child: Text(
              mainContent,
              style: TextStyle(color: mainColor, fontSize: 16),
            ),
          ),
          getLessFocusedText(subtitle + ' no total'),
        ],
      ),
    );
  }
}
