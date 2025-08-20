class BmiResponse {
  final String height;
  final String weight;
  final double bmi;
  final String risk;
  final String recommendation;
  final String summary;
  
  BmiResponse({
    required this.height,
    required this.weight,
    required this.bmi,
    required this.risk,
    required this.recommendation,
    required this.summary,
  });

factory BmiResponse.fromJson(Map<String, dynamic> json) {
  return BmiResponse(
    height: json['height']?.toString() ?? "",
    weight: json['weight']?.toString() ?? "",
    bmi: (json['bmi'] as num).toDouble(),
    risk: json['risk']?.toString() ?? "",
    recommendation: json['recommendation']?.toString() ?? "",
    summary: json['summary']?.toString() ?? "",
  );
}
}
