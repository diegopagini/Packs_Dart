class Gini {
  double the2019;

  Gini({
    required this.the2019,
  });

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2019: json["2019"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "2019": the2019,
      };
}
