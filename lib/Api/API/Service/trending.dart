import 'dart:developer';

import 'package:bucket/Api/API/Model/trending.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class TrendingService {
  Future<TrendingModel> trendingservice() async {
    final url = 'https://run.mocky.io/v3/01bf164b-150a-448a-b61e-3fa3d39ad2a5';
    final response = await http.get(Uri.parse(url));
    print(response.body);
    final data = json.decode(response.body);
    print("response");
    final modelData = TrendingModel.from(data);
    return modelData;
  }
}
