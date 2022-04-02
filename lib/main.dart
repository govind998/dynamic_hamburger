import 'package:flutter/material.dart';

//pages
import './intimation.dart';
import './connectedindividual.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Hamburger',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Dynamic Hamburger'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 void routePage(pageKey){
   switch(pageKey){
     case 'Intimation':
                        Navigator.push(context,new MaterialPageRoute(
                                        builder:(BuildContext context)=> new IntimationPage()
                                      ));
                        break;
      case 'Connected Individual':
                        Navigator.push(context,new MaterialPageRoute(
                                        builder:(BuildContext context)=> new ConnectedIndividual()
                                      ));
                        break;
   }

 }
  List<Widget> generateHamburger() {
    List<Widget> widgets = [];
    widgets.add( 
      new UserAccountsDrawerHeader(
      accountName: new Text("Govind Agarwal"),
      accountEmail: new Text(
        "Govind.Agarwal@tssconsultancy.com",
      ),
      currentAccountPicture: new CircleAvatar(
        backgroundColor: Colors.white70,
        child: new Text("GA"),
      ),
    ));
    var items = [
      "Intimation",
      "Connected Individual",
      "Demat Account"
      "Annual Holdings",
      "Employee Dealing Policy",
    ];
    for (int i = 0; i < items.length; i++) {
      widgets.add(new ListTile(
        title: new Text(items[i]),
        onTap: (){
          Navigator.of(context).pop();
          routePage(items[i]);
        },
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Hamburger Demo"),
      ),
      drawer: new Drawer(
        backgroundColor: Colors.white,
        child: new ListView(
          children: generateHamburger(),
        ),
      ),
    );
  }
}
