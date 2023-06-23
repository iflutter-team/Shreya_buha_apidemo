import 'package:apidemo/utils/endpoint_res.dart';
import 'package:http/http.dart' as http;

import '../json_model/signup_model.dart';
import '../services/http_api_service.dart';

class SignupApi {
  static Future registerUser({Map<String, dynamic>? body}) async {
    try {
      String url = EndPointRes.signUp;
      http.Response? response = await HttpService.postApi(
        url: url,
        body: body,
        header: {'Content-Type': 'application/json'},
      );
      if (response != null && response.statusCode == 200) {
        print(response.body);
        return signUpModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
