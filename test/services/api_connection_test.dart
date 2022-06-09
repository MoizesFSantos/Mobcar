import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobcar/services/api_connection.dart';

voidmain() {
  test('deve retornar todos as marcas', () async {
    final dio = Dio();
    final service = ApiService(dio);
    final marcas = await service.getMarcas();
    expect(marcas[0].nome, 'Acura');
  });
}
