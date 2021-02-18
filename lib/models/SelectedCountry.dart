class SelectedCountry {
  String todayCases;
  String todayRecovered;
  String todayDeaths;
  String totalCases;
  String totalRecovered;
  String totalDeaths;

  SelectedCountry();

  SelectedCountry.fromJson(Map<String, dynamic> json)
      : todayCases = json['todayCases'].toString(),
        totalCases = json['cases'].toString(),
        todayRecovered = json['todayRecovered'].toString(),
        totalRecovered = json['recovered'].toString(),
        todayDeaths = json['todayDeaths'].toString(),
        totalDeaths = json['deaths'].toString();
}
