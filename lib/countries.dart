import 'package:http/http.dart' as http;

import 'models/country.dart';

Future<List<Country>> getCountries() async {
  final url = Uri.parse('https://restcountries.com/v3.1/alpha/col');
  try {
    final response = await http.get(url);
    final value = countryFromJson(response.body);
    return value;
  } catch (e) {
    throw 'Error: $e';
  }
}
