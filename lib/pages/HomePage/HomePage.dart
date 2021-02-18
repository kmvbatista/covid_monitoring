import 'package:flutter/material.dart';
import 'package:padawan_flutter_covid/models/CountryTotalCases.dart';
import 'package:padawan_flutter_covid/models/SelectCountry.dart';
import 'package:padawan_flutter_covid/models/SelectedCountry.dart';
import 'package:padawan_flutter_covid/pages/HomePage/Tabs/Panel.dart';
import 'package:padawan_flutter_covid/services.dart';
import 'package:padawan_flutter_covid/widgets/Select.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Service service = new Service();
  List<SelectCountry> selectCountries = [];
  List<CountryTotalCases> countriesTotalCases;
  SelectedCountry selectedCountry = SelectedCountry();

  @override
  void initState() {
    super.initState();
    getCountriesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('Kennedy'),
        actions: [
          Select(
            countries: selectCountries,
            onchange: getSelectedCountry,
          )
        ],
      ),
      body: Container(
        child: Panel(
          selectedCountry: selectedCountry,
        ),
      ),
    );
  }

  void getCountriesData() async {
    Map<String, dynamic> data = await service.getAllCountriesData();
    setState(() {
      selectCountries = data['selectCountries'];
      countriesTotalCases = data['countriesTotalCases'];
    });
  }

  void getSelectedCountry(String countrycode) async {
    SelectedCountry incomingSelectedCountry =
        await service.getSelectedCountry(countrycode);
    setState(() {
      selectedCountry = incomingSelectedCountry;
    });
  }
}
