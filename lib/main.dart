import 'package:ecommerceapi/screen/get_data/view/get_screen.dart';
import 'package:ecommerceapi/screen/post_data/provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/get_data/provider/get_provider.dart';
import 'screen/post_data/view/post_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Commerce_provider(),),
        ChangeNotifierProvider(create: (context) => PostProvider(),),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
        '/':(context) => const Post_screen(),
          'add':(context) =>Get_screen(),
        },
  ),
    ),
  );
}