import 'package:get/get.dart';
import 'package:testing_web_project/APi.dart';
import 'package:testing_web_project/model/country_model.dart';

class DemoController extends GetxController {

  RxBool isloading = false.obs;
  CountryModel? model;

  loadData() async* {
    this.isloading.value = true;
    model = await Api().getDemoData();
    this.isloading.value = false;
    update();
  }

  @override
  void onInit() {
    loadData();
  }
}
