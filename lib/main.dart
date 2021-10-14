import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/prefs/styles.dart';
import 'package:untitled1/prefs/theme_provider.dart';

import 'otp_screens/Otp_verfication_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  bool switchValue = false;
  ThemeProvider themeProvider = ThemeProvider();

  void getCurrentTheme() async {
    themeProvider.darkTheme = await themeProvider.preference.getTheme();
  }

  @override
  void initState() {
    getCurrentTheme();
  }




  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}
@override

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return   ChangeNotifierProvider<ThemeProvider>(
       create: (context) => ThemeProvider(),
       child: Builder(builder: (context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Diz khata',
      // theme: Style.themeData(widget.themeProvider.darkTheme,),
      

      theme: ThemeData(
        fontFamily: 'Montserrat' ,

         // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
          primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
    ));}}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:otp_verfication_screen(),
    );
  }
}



