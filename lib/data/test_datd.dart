

import '../core/class/Request_Card.dart';
import '../linkApi.dart';

class TestData{

  Curd curd;

  TestData (this.curd);
  getData() async{
    var response = await curd.postData(AppLink.users,{});
    response.fold((l)=>l,(r)=>r);
  }
}