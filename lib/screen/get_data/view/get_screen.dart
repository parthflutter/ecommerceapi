import 'package:ecommerceapi/screen/get_data/provider/get_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../post_data/provider/post_provider.dart';

class Get_screen extends StatefulWidget {
  const Get_screen({Key? key}) : super(key: key);

  @override
  State<Get_screen> createState() => _Get_screenState();
}

class _Get_screenState extends State<Get_screen> {
  PostProvider? True, False;
  Commerce_provider?commerce_providert, commerce_providerf;

  @override
  Widget build(BuildContext context) {
    True = Provider.of<PostProvider>(context, listen: true);
    False = Provider.of<PostProvider>(context, listen: false);
    commerce_providert = Provider.of<Commerce_provider>(context, listen: true);
    commerce_providerf = Provider.of<Commerce_provider>(context, listen: false);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Add Product"),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                  controller: True!.txtname,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  //controller: ,
                  decoration: InputDecoration(
                    labelText: "Enter Name",
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: True!.txtrate,
                  decoration: InputDecoration(
                    labelText: "Enter Rate",
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: True!.txtprice,
                  decoration: InputDecoration(
                    labelText: "Enter Price",
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  )
              ),
            ),
         
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: True!.txtcategory,
                  decoration: InputDecoration(
                    labelText: "Enter Category",
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  )
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () async {
              String name = True!.txtname.text;
              String offer = True!.txtoffer.text;
              String description = True!.txtdescription.text;
              String category = True!.txtcategory.text;
              String rate = True!.txtrate.text;
              String price = True!.txtprice.text;
              String msg = await False!.postApi(
                  name, rate, price, offer, description, category);
              commerce_providerf!.GetApi();
              print("$msg");
              Navigator.pop(context);
            },
              child: Text("Submit", style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                  side: BorderSide(color: Colors.white)),),
            SizedBox(height: 10,),
          ],
        ),
      ),
    ),
    );
  }
}
