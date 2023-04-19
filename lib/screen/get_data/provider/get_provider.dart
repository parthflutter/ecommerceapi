import 'package:ecommerceapi/screen/get_data/modal/e-commerce_modal.dart';
import 'package:ecommerceapi/ulitis/api_helper.dart';
import 'package:flutter/foundation.dart';

class Commerce_provider extends ChangeNotifier


{

  List<commerceModal> JsonData=[];
  Future<void> GetApi() async
  {
    ApiHelper ah= ApiHelper();
    JsonData = await ah.getApi();
    notifyListeners();
  }
}