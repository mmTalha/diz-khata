import 'package:flutter/material.dart';
import 'package:untitled1/Tab_bar_Screens/Cash_Book_screen.dart';
import 'package:untitled1/Tab_bar_Screens/Khata_Screen.dart';
import 'package:untitled1/Tab_bar_Screens/Reconsile_Screen.dart';
import 'package:untitled1/Tab_bar_Screens/account_Screen.dart';




class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    // home_screen1(),
    // SignIn(),
    // aboutus(),
    khata_main(),
    Cash_Book_Screen(),
    Reconsile_Screen(),
    Profile_screen(),


  ];
  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        backgroundColor:  Color.fromRGBO(230, 231, 232,10  ) ,
        selectedItemColor: Colors.black ,
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 10,
        unselectedFontSize: 8,

        items: [
          BottomNavigationBarItem(
            icon:Image.asset( 'assets/khata.png',height: 10) ,
            title: Text(  'Khata' ),

          ),
          // BottomNavigationBarItem(
          //     icon: new Icon(Icons.home),
          //     title: new Text("DemoHome")
          // ),
          BottomNavigationBarItem(
            icon:  Image.asset( 'assets/Cashbook.png',height: 10),
            title: Text(  'CashBook' ) ,      ),
          BottomNavigationBarItem(

              icon: Image.asset( 'assets/reconsile.png',height: 10),
              title: Text(  'Reconsile' )
          ),
          BottomNavigationBarItem(
              icon:  Image.asset( 'assets/profile.png',height: 10),
              title: Text(  'Account' )         ),
        ],
      ),
    );
  }
}
