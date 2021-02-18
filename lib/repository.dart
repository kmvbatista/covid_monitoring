import 'package:dio/dio.dart';

class Repository {
  Dio client;
  static const String _worldWide = 'worldwide';
  Repository() {
    client = Dio();
    client.options.baseUrl = 'https://disease.sh/v3/covid-19';
  }

  Future<Map<String, dynamic>> getSelectedCountry(
      {String countryCode = _worldWide}) async {
    var uri = countryCode == _worldWide ? '/all' : '/countries/$countryCode';
    var response = await client.get(uri);
    return response.data;
  }

  Future<List<dynamic>> getAllCountriesData() async {
    var response = await client.get('/countries');
    return response.data;
  }
}
