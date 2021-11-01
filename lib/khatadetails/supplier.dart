// Copyright (c) 2014, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Tab_bar_Screens/Khata_Screen.dart';
import 'package:untitled1/khatadetails/cash_in.dart';
import 'package:untitled1/prefs/theme_provider.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class aad_supplier extends StatelessWidget {
  const aad_supplier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();

    final TextEditingController phone1 = TextEditingController();
    final TextEditingController name = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(230, 231, 232, 10),
        title: Text(
          'Add Customer',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Form(
        key: formGlobalKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  maxLength: 4,
                  controller: name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                      prefixStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter  name',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red))),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  controller: phone1,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter mobile';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                      prefixStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter mobile number',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red))),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text(
                          'Add',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                    onPressed: ()async {






                      // }
                      if (formGlobalKey.currentState!.validate()) {
                        provider.addsupplier(name.text, phone1.text);
                        name.clear();
                        phone1.clear();
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => khata_main()));
                      } else {
                        return;
                      }}


                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
