
import 'package:flutter/material.dart';
 import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled1/Tab_bar_Screens/dashborad_screen.dart';



class Enter_OTP_Screen extends StatelessWidget {
  const Enter_OTP_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textEditingController;
    return Scaffold(
      body: SafeArea(
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
                'Enter OTP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text('Please Enter one time Password'),
              SizedBox(
                height: 35,
              ),
              // Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Text('Country/Region '),
              //       Text('Pakistan >'),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              Container(
                padding: EdgeInsets.only(left: 50,right: 50),
                child: PinCodeTextField(

                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,

                  pinTheme: PinTheme(
                     activeColor:Colors.white ,
                    inactiveColor:Colors.white ,
                    selectedColor: Colors.white,
                    disabledColor:Colors.white ,
                    selectedFillColor:Colors.white ,
                    inactiveFillColor:Colors.grey ,

                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: Duration(milliseconds: 300),

                  enableActiveFill: true,

                  controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                  //   setState(() {
                  //     var currentText = value;
                  //   });
                   },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                      return true;
                  }, appContext: context,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(


                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO( 18, 119, 197 ,10) , Color.fromRGBO( 94, 211, 118,10) ],
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => home(
                            )));
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Didnt Recieve OTP? Resend OTP ',style: TextStyle( ),),
            ],
          ),
        ),
      ),
    );
  }
}
