import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/otp_screens/Enter_OTP_screen.dart';
import 'package:untitled1/prefs/theme_provider.dart';

class otp_verfication_screen extends StatelessWidget {
  const otp_verfication_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController otpfield = TextEditingController();
    final formGlobalKey = GlobalKey<FormState>();
    String otpcode ;

    return   ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
        child: Builder(builder: (context) {
          return Scaffold(
              body: Consumer<ThemeProvider>(
                  builder: (context, provider, child) {
                    return SingleChildScrollView(
                      child: SafeArea(
                        top: true,
                        child: Container(
                          padding: EdgeInsets.only(top: 50),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                  child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        height: 150,
                                      ))),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'OTP Verification',
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              Text('Please Enter your Phone number'),
                              SizedBox(
                                height: 35,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Country/Region '),
                                    Text('Pakistan >'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Form(
                                key: formGlobalKey,
                                child: Container(
                                    width: 310,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TextFormField(
                                        validator: (val) =>
                                        !val!.contains('+92') ? 'add +92' : null,
                                        onSaved: (val) => val = otpfield.text,
                                        controller: otpfield,
                                        decoration: InputDecoration(

                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.all(13.0),
                                              child: Text(' +92 ', style: TextStyle(
                                                  fontSize: 15, color: Colors.grey),),
                                            ),
                                            prefixStyle: TextStyle(color: Colors.black),
                                            hintText: 'Phone Number',
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                    color: Colors.black)),
                                            errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.red)),
                                            focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.red))),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(


                                width: 250,
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
                                    'Send',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {


                                    int min = 100000; //min and max values act as your 6 digit range
                                    int max = 999999;
                                    var randomizer = new Random();
                                    var rNum = min + randomizer.nextInt(max - min);
                                    print(rNum);
                                    otpcode = rNum.toString();

                                    if(formGlobalKey.currentState!.validate()&&otpfield.text.isNotEmpty){
                                      provider.fetchflat( 'bizkhata',otpfield.text ,'your otp is $otpcode');
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              fullscreenDialog: true,
                                              builder: (context) =>
                                                  Enter_OTP_Screen(
                                                    code: otpcode,
                                                    mobilenum: otpfield.text,
                                                  )));
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }));
        }));}}

