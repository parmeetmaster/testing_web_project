

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:testing_web_project/model/country_model.dart';

class Api {


  getDemoData() async  {
    Dio dio=new Dio();
    var response=await dio.get("https://raw.githubusercontent.com/lutangar/cities.json/master/cities.json");
   return response;
  }

}