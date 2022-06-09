import 'package:dio/dio.dart';
import 'package:mobcar/models/marcas_model.dart';
import 'package:mobcar/services/http_client_interface.dart';

class ApiService {
  final url = 'https://parallelum.com.br/fipe/api/v1/carros/marcas';
  final IHttpClient client;

  ApiService(this.client);

  Future<List<MarcaModel>> getMarcas() async {
    final response = await client.get(url);
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
