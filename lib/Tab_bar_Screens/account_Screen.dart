 
import 'package:flutter/material.dart';
import 'package:untitled1/prefs/theme_provider.dart';



class Profile_screen extends StatefulWidget {
  const Profile_screen({Key? key}) : super(key: key);

  @override
  _Profile_screenState createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  bool switchValue = false;
  ThemeProvider themeProvider = ThemeProvider();
  void getCurrentTheme() async {
    themeProvider.darkTheme = await themeProvider.preference.getTheme();
  }
  @override
  void initState() {
    getCurrentTheme();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                  alignment:Alignment.center ,
                child: Column(
                  children: [
                    Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://www.woolha.com/media/2019/06/buneary.jpg")
                            )
                        )
                    ),
                    Text('Saad Ameen ',style: TextStyle(fontFamily: 'Montserrat-Bold',fontSize: 25),),
                    Text('031323748756'),
                  ],
                ),
              ),
            ),
            Container(

              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Saad Ameen',
                      style:  TextStyle(
                          fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.person,
                      color:   Colors.grey,
                    ),
                  ),
                  Divider(color: Colors.grey,thickness: 0.5,)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Bussiness Type',
                      style:  TextStyle(
                          fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.business_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(color: Colors.grey,thickness: 0.5,)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'business Card',
                      style:  TextStyle(
                          fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.business_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(color: Colors.grey,thickness: 0.5,)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Language',
                      style:  TextStyle(
                          fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.language ,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(color: Colors.grey,thickness: 0.5,)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Backup Information',
                      style:  TextStyle(
                          fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.insert_drive_file_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(color: Colors.grey,thickness: 0.5,)
                ],
              ),
            ),
             Container(


              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Theme',
                      style:  TextStyle(
                          fontFamily: 'Roboto', color: Colors.black),
                    ),
                    leading: Icon(
                      Icons.color_lens_rounded,
                      color: Colors.grey,
                    ),
                    trailing:
                    Switch
                      ( value: switchValue,
                          onChanged: (val){
                         themeProvider.darkTheme = !themeProvider.darkTheme;
                          setState(() {
                           switchValue = val;
                                   });
                            },
                                ),

                         ),

                  Divider(color: Colors.grey,thickness: 0.5,)
                ],
              ),
            ),
            Container(


              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Rate Biz Khata',
                      style:  TextStyle(
                          fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading:
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(color: Colors.grey,thickness: 0.5,)
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
