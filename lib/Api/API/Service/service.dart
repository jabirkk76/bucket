import 'dart:developer';

import 'package:bucket/Api/API/Model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ServiceHead {
  Future<Model> service() async {
    final url = 'https://run.mocky.io/v3/a723bd26-3470-4eae-94e2-11f0ef41df1f';
    final response = await http.get(Uri.parse(url));
    print(response.body);
    final data = json.decode(response.body);
    print("response");
    final modelData = Model.from(data);
    return modelData;
  }
}
