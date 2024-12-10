class Condition {
  final String text;
  final String icon;
  final int code;

  Condition({
    required this.text,
    required this.code,
    required this.icon,
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json["text"],
      code: json["code"],
      icon: json["icon"],
    );
  }
}
