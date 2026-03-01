import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        home: MyApp(),
      ),
    ),
  );
  
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 44, 93, 168),
          title: Text(
            "Hey",
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
        body: Center(
          child: Text(
            "Hello World",
            style:TextStyle(fontSize: 24.0)),
        ),
      ),
    );
  }
}