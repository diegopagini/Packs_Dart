import 'package:dart_application_packs/countries.dart' as countries;
import 'package:dart_application_packs/dart_application_packs.dart' as lib;

void main() async {
  lib.getResponseService();
  final [col] = await countries.getCountries();
  print(col);
}
