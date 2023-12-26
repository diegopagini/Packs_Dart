class Languages {
  String spa;

  Languages({
    required this.spa,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        spa: json["spa"],
      );

  Map<String, dynamic> toJson() => {
        "spa": spa,
      };
}
