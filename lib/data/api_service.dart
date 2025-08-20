import 'dart:convert';
import 'package:bmi/data/bmi_response.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<BmiResponse> calculateBmi({
    required int height,
    required int weight,
  }) async {
    try {
      final response = await dio.get(
        'https://api.apiverve.com/v1/bmicalculator',
        queryParameters: {
          'height': height,
          'weight': weight,
          'unit': 'metric',
        },
        options: Options(
          headers: {
            'X-Api-Key': 'de219a90-8b48-448b-9576-310a268107c4',
          },
        ),
      );

      if (response.statusCode == 200) {
        dynamic rawData = response.data;
        if (rawData is String) {
          rawData = jsonDecode(rawData);
        }
        final data = rawData["data"];
        return BmiResponse.fromJson(data);
      } else {
        throw Exception("Failed with status: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}
