import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled1/prefs/theme_provider.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({Key? key}) : super(key: key);

  @override
  _Profile_screenState createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  File? _image;
  final imagePicker = ImagePicker();
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

  _imgFromCamera() async {
    var image = await imagePicker.getImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = File(image!.path);
    });
  }

  _imgFromGallery() async {
    var image = await imagePicker.getImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = File(image!.path);
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
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
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Center(
                        child: GestureDetector(
                          onTap: () {
                            _showPicker(context);
                          },
                          child: CircleAvatar(
                            radius: 55,
                            backgroundColor: Colors.grey,
                            child: _image != null
                                ? ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                _image!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            )
                                : Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50)),
                              width: 100,
                              height: 100,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        )),
                    // Container(
                    //     width: 100.0,
                    //     height: 100.0,
                    //     decoration: new BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         image: new DecorationImage(
                    //             fit: BoxFit.cover,
                    //             image: new NetworkImage(
                    //                 "https://www.woolha.com/media/2019/06/buneary.jpg")
                    //         )
                    //     )
                    // ),
                    Text(
                      'Saad Ameen ',
                      style: TextStyle(
                          fontFamily: 'Montserrat-Bold', fontSize: 25),
                    ),
                    Text('031323748756'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Saad Ameen',
                      style:
                      TextStyle(fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Bussiness Type',
                      style:
                      TextStyle(fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.business_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'business Card',
                      style:
                      TextStyle(fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.business_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Language',
                      style:
                      TextStyle(fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.language,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Backup Information',
                      style:
                      TextStyle(fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.insert_drive_file_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  )
                ],
              ),
            ),
            // Container(
            //   child: Column(
            //     children: [
            //       ListTile(
            //         title: Text(
            //           'Theme',
            //           style:
            //               TextStyle(fontFamily: 'Roboto', color: Colors.black),
            //         ),
            //         leading: Icon(
            //           Icons.color_lens_rounded,
            //           color: Colors.grey,
            //         ),
            //         trailing: Switch(
            //           value: switchValue,
            //           onChanged: (val) {
            //             themeProvider.darkTheme = !themeProvider.darkTheme;
            //             setState(() {
            //               switchValue = val;
            //             });
            //           },
            //         ),
            //       ),
            //       Divider(
            //         color: Colors.grey,
            //         thickness: 0.5,
            //       )
            //     ],
            //   ),
            // ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Rate Biz Khata',
                      style:
                      TextStyle(fontFamily: 'Roboto', color: Colors.grey),
                    ),
                    leading: Icon(
                      Icons.star_rate_sharp,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
