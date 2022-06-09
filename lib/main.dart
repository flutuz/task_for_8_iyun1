import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:task_for_8_iyun/pages/sign_in.dart';
import 'package:task_for_8_iyun/pages/sign_up.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("sign_in_data");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign IN/UP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIN(),
      routes: {
        SignIN.id: (context) => SignIN(),
        SignUP.id: (context) => SignUP(),
      },
    );
  }
}
