import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


import '../json_model/product_model.dart';
import '../services/http_api_service.dart';
import '../utils/endpoint_res.dart';

class HomeScreenApi {
  static Future getData()async {
    try {

      http.Response? response=await HttpService.getApi(url: EndPointRes.productAPI);
      if(response!=null&&response.statusCode==200){
        return productModelFromJson(response.body);
      }
    } catch (e) {

        print(e);

      return null;
    }
  }

  // static Future addData()async {
  //   try {
  //
  //     http.Response? response=await HttpService.getApi(url: EndPointRes.productAPI);
  //     if(response!=null&&response.statusCode==200){
  //       return productModelFromJson(response.body);
  //     }
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     return null;
  //   }
  // }
}
