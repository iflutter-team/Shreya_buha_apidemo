import 'dart:convert';

import 'package:apidemo/home_screen/home_api.dart';
import 'package:get/get.dart';

import '../json_model/photos_model.dart';
import '../json_model/product_model.dart';
import '../json_model/user_model.dart';
import '../services/pref_service.dart';
import '../utils/pref_res.dart';


class HomeController extends GetxController{
  User? loginUser;
  List<User>? userList;
  List<ImageModel>? imageList;
  ProductModel? productList;
  bool loader=false;

  @override
  void onInit() {
    // TODO: implement onInit
   // getLoginUser();
   // getAllUser();
   // getImageList();
    getProductList();
    super.onInit();
  }
  // Future<void>getImageList() async {
  //   loader=true;
  //   update(["UserList"]);
  //   imageList=await HomeScreenApi.getData();
  //   // imageList??=[];
  //   loader=false;
  //   update(["UserList"]);
  // }

  Future<void>getProductList() async {
    loader=true;
    update(["productList"]);
    productList=await HomeScreenApi.getData();
    loader=false;
    update(["productList"]);
  }

  void getLoginUser(){
    String loginUserString = PrefService.getString(PrefRes.loginUser);
    loginUser = User.fromJson(json.decode(loginUserString));
    update(["LoginUser"]);
  }

  void getAllUser(){
    String allUserListStr = PrefService.getString(PrefRes.userList);
    userList = userFromJson(allUserListStr);
    update(["UserList"]);
  }



}