import 'package:flutter/material.dart';
import 'package:new_app_project/screens/home.dart';
import 'package:new_app_project/screens/second.dart';

import 'package:new_app_project/state/cart.dart';
import 'package:new_app_project/state/counter.dart';
import 'package:provider/provider.dart';

main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Cart()),
      ChangeNotifierProvider(create: (_) => Count()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/second': (context) => Second(),
      },
    );
  }
}

// Top level widget
