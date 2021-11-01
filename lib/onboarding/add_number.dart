// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Tab_bar_Screens/Khata_Screen.dart';
import 'package:untitled1/Tab_bar_Screens/dashborad_screen.dart';
import 'package:untitled1/prefs/theme_provider.dart';




class add_number extends StatelessWidget {
  const add_number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    final TextEditingController number = TextEditingController();
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
                      'Your Details',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Enter Your Mobile Number',
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
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter mobile';
                              }
                              return null;
                            },
                            controller: number,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(

                                  borderSide: BorderSide(color: Colors.grey)),
                              errorBorder: OutlineInputBorder(

                                  borderSide: BorderSide(color: Colors.red)),
                              focusedErrorBorder: OutlineInputBorder(

                                  borderSide: BorderSide(color: Colors.red)),
                              hintText: 'Mobile number',
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
                      number.text.isNotEmpty) {

                    provider.login('03132370807' );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) =>
                                khata_main()
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

      // TODO(paulberry,ahe): Fasta re