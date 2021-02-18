import 'package:flutter/material.dart';
import 'package:padawan_flutter_covid/models/SelectCountry.dart';

class Select extends StatefulWidget {
  Select({@required this.countries, @required this.onchange});
  final List<SelectCountry> countries;
  final Function onchange;
  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  String selectedValue;

  void onChange(String newSelectedCountryCode) {
    setState(() {
      selectedValue = newSelectedCountryCode;
    });
    widget.onchange(newSelectedCountryCode);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text('Selecione um país'),
      onChanged: onChange,
      value: selectedValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      items: widget.countries
          .map<DropdownMenuItem<String>>((country) => DropdownMenuItem(
                value: country.countryCode,
                child: Text(country.name),
              ))
          .toList(),
    );
  }
}
