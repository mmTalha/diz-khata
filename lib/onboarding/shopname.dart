// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Tab_bar_Screens/dashborad_screen.dart';
import 'package:untitled1/onboarding/add_number.dart';
import 'package:untitled1/prefs/theme_provider.dart';

class shopname extends StatelessWidget {
  const shopname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    final TextEditingController shopname = TextEditingController();
    return ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
        child: Builder(builder: (context) {
          return Scaffold(body:
          Consumer<ThemeProvider>(builder: (context, provider, child) {
            return SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Personal / Shop Details',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Enter Your Shop Name',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: formGlobalKey,
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter Shopname';
                              }
                              return null;
                            },
                            controller: shopname,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(

                                  borderSide: BorderSide(color: Colors.grey)),
                              errorBorder: OutlineInputBorder(

                                  borderSide: BorderSide(color: Colors.red)),
                              focusedErrorBorder: OutlineInputBorder(

                                  borderSide: BorderSide(color: Colors.red)),
                              hintText: 'Fullname / Shopname',
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }), floatingActionButton:
          Consumer<ThemeProvider>(builder: (context, provider, child) {
            return Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(18, 119, 197, 10),
                    Color.fromRGBO(94, 211, 118, 10)
                  ],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                ),
              ),
              child: FlatButton(
                child: Text(
                  'ADD',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (formGlobalKey.currentState!.validate() &&
                      shopname.text.isNotEmpty) {
                    provider.register('03132370807', shopname.text);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) =>
                                add_number()
                        )

                    );
                  } else {
                    return;
                  }
                },
              ),
            );

          }),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          );
        })
    );
  }
}

/// Builder object for creating