import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:login_page/pages/loginPage.dart';

void main() => runApp(DevicePreview(builder: (context) => const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      title: 'login page',
      home:const LoginPage(),
    );
  }
}
