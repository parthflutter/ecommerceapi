import 'package:ecommerceapi/ulitis/api_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class PostProvider extends ChangeNotifier {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtrate = TextEditingController();
  TextEditingController txtoffer = TextEditingController();
  TextEditingController txtdescription = TextEditingController();
  TextEditingController txtcategory = TextEditingController();

  var key = GlobalKey<FormState>();

  Future<String> postApi(String p_name,String p_price,String p_rate,String p_offer,String p_desc,String p_category) async {
    ApiHelper ah= ApiHelper();
    String e = await ah.postApi(p_name, p_price, p_rate, p_offer, p_desc, p_category);
    return e;
  }
}