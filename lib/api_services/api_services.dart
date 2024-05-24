import 'dart:convert';


import 'package:http/http.dart'as http;

import '../model/multi_data_model.dart';
class ApiServices {

  Future<MultiData?> getMultiDataWithModel() async {
    try {
      var responce = await http.get(Uri.parse('https://reqres.in/api/unknown'));

      if (responce.statusCode == 200) {
        MultiData model = MultiData.fromJson(json.decode(responce.body));
        return model;
      }
    } catch (e) {
      print(e);
    }

    return null;
  }


}