import 'package:padawan_flutter_covid/models/CountryTotalCases.dart';
import 'package:padawan_flutter_covid/models/SelectCountry.dart';
import 'package:padawan_flutter_covid/models/SelectedCountry.dart';
import 'package:padawan_flutter_covid/repository.dart';

class Service {
  Repository _repository = Repository();

  Future<SelectedCountry> getSelectedCountry(String countryCode) async {
    var returnedJson =
        await _repository.getSelectedCountry(countryCode: countryCode);
    return SelectedCountry.fromJson(returnedJson);
  }

  Future<Map<String, dynamic>> getAllCountriesData() async {
    var jsonCountries = await _repository.getAllCountriesData();
    List<SelectCountry> selectCountries = jsonCountries
        .map((countryJson) => SelectCountry.fromJson(countryJson))
        .toList();
    List<CountryTotalCases> countriesTotalCases = jsonCountries
        .map((countryJson) => CountryTotalCases.fromJson(countryJson))
        .toList();
    return {
      'selectCountries': selectCountries,
      'countriesTotalCases': countriesTotalCases
    };
  }
}
