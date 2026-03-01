import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        home: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Hello Tharushi",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}