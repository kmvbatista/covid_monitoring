import 'package:flutter/foundation.dart';

class SelectCountry {
  SelectCountry({@required this.name, @required this.countryCode});

  SelectCountry.fromJson(Map<String, dynamic> countryJson)
      : this.name = countryJson['country'],
        this.countryCode = countryJson['countryInfo']['iso2'];

  String name;
  String countryCode;
}
