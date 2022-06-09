import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobcar/models/marcas_model.dart';
import 'package:mobcar/services/api_connection.dart';
import 'package:mobcar/services/dio_client.dart';

class HomeController extends ChangeNotifier {
  final _service = ApiService(DioClient());
  var marcas = <MarcaModel>[];

  HomeController(ApiService apiService);

  Future<void> fetchAllMarcas() async {
    marcas = await _service.getMarcas();
    notifyListeners();
  }
}
