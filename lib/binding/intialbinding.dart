import 'package:get/get.dart';
import 'package:health/core/class/Request_Card.dart';

class Initialbidndings extends Bindings{
  @override
  void dependencies() {
    Get.put(Curd()) ;
  }


}