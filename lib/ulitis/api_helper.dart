
import 'dart:convert';

import 'package:ecommerceapi/screen/get_data/modal/e-commerce_modal.dart';
import 'package:http/http.dart'as http;

class ApiHelper{

  Future<String> postApi(String p_name,String p_price,String p_rate,String p_offer,String p_desc,String p_category) async {

    Uri Link = Uri.parse("https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php");
    var response = await http.post(Link,body:{"p_name":p_name,"p_price":p_price,"p_rate":p_rate,"p_offer":p_offer,"p_desc":p_desc,"p_category":p_category} );
    if(response.statusCode==200)
      {
        return "Sucess";
      }
    return "Fail";
  }

  Future<List<commerceModal>> getApi()
  async {
    Uri link = Uri.parse("https://apidatahub.000webhostapp.com/MyShop/API/products.php");
    var response= await http.get(link);
    List json = jsonDecode(response.body);
    List<commerceModal> JsonData =json.map((e) => commerceModal.fromJson(e)).toList();
     return JsonData;
  }

}