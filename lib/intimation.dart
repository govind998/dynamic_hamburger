import 'package:flutter/material.dart';

class IntimationPage extends StatefulWidget {
  const IntimationPage({ Key? key }) : super(key: key);

  @override
  State<IntimationPage> createState() => _IntimationPageState();
}

class _IntimationPageState extends State<IntimationPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(
      title:new Text("Intimatrion"),      
    )
    );
  }
}