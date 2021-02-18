class CountryTotalCases {
  String name;
  int totalCases;
  String continent;
  String flagUrl;
  CountryTotalCases.fromJson(Map<String, dynamic> json)
      : name = json['country'],
        totalCases = json['cases'],
        flagUrl = json['flag'],
        continent = json['continent'];
}
