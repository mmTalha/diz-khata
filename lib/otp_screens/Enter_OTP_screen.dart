import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Tab_bar_Screens/dashborad_screen.dart';
import 'package:untitled1/onboarding/shopname.dart';
import 'package:untitled1/prefs/theme_provider.dart';



class Enter_OTP_Screen extends StatefulWidget {
	final code;
	final mobilenum;
	const Enter_OTP_Screen({Key? key, this.code, this.mobilenum}) : super(key: key);

	@override
	_Enter_OTP_ScreenState createState() => _Enter_OTP_ScreenState();
}

class _Enter_OTP_ScreenState extends State<Enter_OTP_Screen> {
	@override
	var value;
	@override
	void initState() {
		// TODO: implement initState
		super.initState();
		value="";

	}
	Widget build(BuildContext context) {
		final TextEditingController otpfield123 = TextEditingController();
		var currenttext;
		return   ChangeNotifierProvider<ThemeProvider>(
				create: (context) => ThemeProvider(),
				child: Builder(builder: (context)
				{
					return Scaffold(
						body:Consumer<ThemeProvider>(
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
															padding: EdgeInsets.only(left: 50, right: 50),
															child: PinCodeTextField(
																controller:otpfield123  ,
																length: 6,
																obscureText: false,
																animationType: AnimationType.fade,

																pinTheme: PinTheme(

																	activeColor: Colors.white,
																	inactiveColor: Colors.white,
																	selectedColor: Colors.white,
																	disabledColor: Colors.white,
																	selectedFillColor: Colors.white,
																	inactiveFillColor: Colors.grey,

																	shape: PinCodeFieldShape.box,
																	borderRadius: BorderRadius.circular(5),
																	fieldHeight: 50,
																	fieldWidth: 40,
																	activeFillColor: Colors.white,
																),
																animationDuration: Duration(milliseconds: 300),
																enableActiveFill: true,


																onCompleted: (v) {
																	print("Completed");
																	value=v;
																},
																onChanged: (value) {
																	print(value);
																	setState(() {
																		currenttext = value;
																	});
																},
																beforeTextPaste: (text) {
																	print("Allowing to paste $text");

																	return true;
																},
																appContext: context,
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
																	print(value  );
																	if(value.toString().contains(widget.code)&&value.toString().isNotEmpty ) {
																		print('   match');
																		Navigator.pushReplacement(
																				context,
																				MaterialPageRoute(
																						fullscreenDialog: true,
																						builder: (context) =>
																								shopname(
																								)));

																	}
																	else{
																		return;
																	}
																	// code.toString().contains(otpfield123.value.text) ?
																	// Navigator.push(
																	//     context,
																	//     MaterialPageRoute(
																	//         fullscreenDialog: true,
																	//         builder: (context) =>
																	//             shopname(
																	//             ))) : null ;
																	// otpfield123.text;
																	// Navigator.push(
																	//     context,
																	//     MaterialPageRoute(
																	//         fullscreenDialog: true,
																	//         builder: (context) => home(
																	//         )));
																},
															),
														),
														SizedBox(
															height: 5,
														),
														GestureDetector(
															onTap: () {
																int min = 100000; //min and max values act as your 6 digit range
																int max = 999999;
																var randomizer = new Random();
																var rNum = min + randomizer.nextInt(max - min);
																print(rNum);
																print(currenttext);
																var otpcode = rNum.toString();
																provider.fetchflat(
																		'dizkhata', otpfield123 .value.toString(), 'your otp is $otpcode');
															},
															child: Text(
																'Didnt Recieve OTP? Resend OTP ', style: TextStyle(

															),),
														)
													],
												),
											),
										),
									);}),
					);
				}
				)
		);
	}
}
