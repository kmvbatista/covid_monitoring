import 'package:flutter/material.dart';
import 'package:padawan_flutter_covid/models/SelectedCountry.dart';
import 'package:padawan_flutter_covid/widgets/InfoCard.dart';

class Panel extends StatefulWidget {
  Panel({@required this.selectedCountry});
  final SelectedCountry selectedCountry;
  @override
  _PanelState createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  @override
  Widget build(BuildContext context) {
    var selectedCountry = widget.selectedCountry;
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InfoCard(
            title: 'Casos',
            mainContent: selectedCountry.todayCases ?? '',
            subtitle: selectedCountry.totalCases ?? '',
          ),
          InfoCard(
            title: 'Recuperados',
            mainContent: selectedCountry.todayRecovered ?? '',
            subtitle: selectedCountry.totalRecovered ?? '',
            isPositive: true,
          ),
          InfoCard(
            title: 'Mortes',
            mainContent: selectedCountry.todayDeaths ?? '',
            subtitle: selectedCountry.totalDeaths ?? '',
          ),
        ],
      ),
    );
  }
}
