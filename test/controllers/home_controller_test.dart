import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobcar/controllers/home_controller.dart';
import 'package:mobcar/services/api_connection.dart';

void main() {
  test('deve preencher a lista', () {
    final dio = Dio();
    final service = ApiService(dio);
    final controller = HomeController();
  });
}
