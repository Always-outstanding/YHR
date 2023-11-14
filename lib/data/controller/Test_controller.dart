import 'package:get/get.dart';
import 'package:health/core/class/StatusRequest.dart';

import '../test_datd.dart';

class TestController extends GetxController {


  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest ;

  GetData()async{

    statusRequest = StatusRequest.loading ;

  }

}




