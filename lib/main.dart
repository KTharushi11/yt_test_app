import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),      
      home: MyHomePage(),
    );
  }
}

class   MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter AppBar', style: TextStyle(color: Colors.white)),
          leading: IconButton(onPressed: () { print("Leading button pressed"); }, icon: Icon(Icons.menu, color: Colors.white)),
          actions: <Widget>[
            IconButton(onPressed: () { print("Search button pressed"); }, icon: Icon(Icons.search, color: Colors.white)),
            IconButton(onPressed: () { print("More button pressed"); }, icon: Icon(Icons.more_vert, color: Colors.white)),
          ],
          flexibleSpace: Icon(Icons.photo_camera, size: 100, color: Colors.white.withOpacity(0.5)),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  } 
}
