import 'dart:convert';
import 'dart:convert';

import 'package:ecommerceapi/screen/get_data/view/get_screen.dart';
import 'package:ecommerceapi/screen/post_data/provider/post_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../get_data/provider/get_provider.dart';

class Post_screen extends StatefulWidget {
  const Post_screen({Key? key}) : super(key: key);

  @override
  State<Post_screen> createState() => _Post_screenState();
}
class _Post_screenState extends State<Post_screen> {
  @override
  Commerce_provider?postProvidert,postProviderf;
  void initState() {
    super.initState();
    Provider.of<Commerce_provider>(context,listen: false).GetApi();
  }
  @override
  Widget build(BuildContext context) {
    postProviderf=Provider.of<Commerce_provider>(context,listen: false);
    postProvidert=Provider.of<Commerce_provider>(context,listen: true);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
    centerTitle: true,
    backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
    itemCount: postProvidert!.JsonData.length,
        itemBuilder: (context, index) {
        return Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 80,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 20,),
                  Container(
                    width:30,
                    alignment:Alignment.center,
                    child: Text("${postProvidert!.JsonData[index].productname}"),),
                  SizedBox(width: 20,),
                  Container(
                    width: 50,
                    alignment: Alignment.centerLeft,
                    color: Colors.grey,
                    child: Text("${postProvidert!.JsonData[index].productprice}"),),
                  //SizedBox(width: 20,),
                  Container(
                    width: 90,
                    color: Colors.grey,
                    child: Text("${postProvidert!.JsonData[index].productcategory}"),),
                  Container(
                    width: 90,
                    color: Colors.grey,
                    child: Text("${postProvidert!.JsonData[index].productrate}"),),
          ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black)
              ),
            );
    },
    ),
    floatingActionButton: Align(
    alignment: Alignment.bottomRight,
    child: FloatingActionButton(
    backgroundColor: Colors.black,
    onPressed: () {
    Navigator.pushNamed(context, 'add');
    },child: Icon(Icons.add,color: Colors.grey),),
        ),
    ),
  );
  }
}




