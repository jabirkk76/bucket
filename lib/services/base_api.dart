// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class BaseApi {
//   get({endPoint, headers}) async {
//     var baseUrl = "http://otapp/api";

//     var url = baseUrl + endPoint;
//     var data;
//     var response = await http.get(Uri.parse(url), headers: headers);

//     if (response.statusCode == 200) {
//       data = json.decode(response.body);
//     }
//     return data;
//   }

//   post({endPoint}) async {
//     var baseUrl = "http://otapp/api";

//     var url = baseUrl + endPoint;
//     var response = await http.post(
//       Uri.parse(url),
//     );
//     return response;
//   }
// }
