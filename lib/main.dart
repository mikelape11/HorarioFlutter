
import 'widget/horario.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int _selectedIndex = 0;
const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<Widget> _widgetOptions = <Widget>[
    GridWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "HORARIO MIKEL",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          )
        ),
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/katua.png",),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop), 
          ),
        )
      ),
      //backgroundColor: Colors.black,
    );
  }
}
