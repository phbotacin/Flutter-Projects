import 'dart:convert';

import 'package:http/http.dart' as http;

class CepApi {
  Future<dynamic> getByCep({required String cep}) async {
    try {
      var request = http.Request(
          'GET', Uri.parse('https://viacep.com.br/ws/$cep/json/'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        return jsonDecode(await response.stream.bytesToString());

      } else {
        print('Erro em CepApi/getByCep($cep): Codigo HTTP ${response.statusCode}');
      }
    } catch (e) {
      print('Erro em CepApi/getByCep($cep): $e');
    }
  }
}
