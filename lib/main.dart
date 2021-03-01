import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pogoda',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _kFontPam = 'MyFlutterApp';
  static const _kFontPkg = null;

  static const IconData drizzle =
      IconData(0xe800, fontFamily: _kFontPam, fontPackage: _kFontPkg);
  static const IconData sun =
      IconData(0xe801, fontFamily: _kFontPam, fontPackage: _kFontPkg);
  static const IconData cloud_sun =
      IconData(0xe802, fontFamily: _kFontPam, fontPackage: _kFontPkg);
  static const IconData sunset =
      IconData(0xe803, fontFamily: _kFontPam, fontPackage: _kFontPkg);

  String temp = '26';
  String weather = "S\nU\nN\nN\nY";
  Color color = Colors.black;
  String background = "assets/images/bg1.png";
  String gif = "assets/images/sunny.gif";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(background), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 30, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  temp,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Oxygen',
                                      color: color),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
