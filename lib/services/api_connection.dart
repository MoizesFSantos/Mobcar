import 'package:dio/dio.dart';
import 'package:mobcar/models/marcas_model.dart';

class ApiService {
  final url = 'https://parallelum.com.br/fipe/api/v1/carros/marcas';
  final Dio dio;

  ApiService(this.dio);

  Future<List<MarcaModel>> getMarcas() async {
    final response = await dio.get(url);
    final body = response.data as List;
    final marcas = body
        .map((map) => MarcaModel(
              nome: map['nome'],
              codigo: map['codigo'],
            ))
        .toList();

    return marcas;
  }
}
