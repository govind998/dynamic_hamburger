import 'package:flutter/material.dart';

class ConnectedIndividual extends StatefulWidget {
  const ConnectedIndividual({ Key? key }) : super(key: key);

  @override
  State<ConnectedIndividual> createState() => _ConnectedIndividualState();
}

class _ConnectedIndividualState extends State<ConnectedIndividual> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Connected Individual"),
      )
    );
  }
}