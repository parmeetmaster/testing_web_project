import 'package:get/get.dart';
import 'package:testing_web_project/APi.dart';
import 'package:testing_web_project/model/country_model.dart';

class DemoController extends GetxController {

  RxBool isloading = false.obs;
  CountryModel? model;

  loadData() async {
    this.isloading.value = true;
    var response = await Api().getDemoData();
  model=  CountryModel.fromJson(response.data);
    this.isloading.value = false;
    update();
  }

  @override
  void onInit() {
    loadData();
  }
}
