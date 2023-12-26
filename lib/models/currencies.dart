import 'cop.dart';

class Currencies {
  Cop cop;

  Currencies({
    required this.cop,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        cop: Cop.fromJson(json["COP"]),
      );

  Map<String, dynamic> toJson() => {
        "COP": cop.toJson(),
      };
}
