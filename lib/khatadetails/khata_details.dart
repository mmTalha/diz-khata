import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/hisaab_ka_parcha/apne_diye.dart';
import 'package:untitled1/khatadetails/cash_in.dart';
import 'package:untitled1/khatadetails/cash_out.dart';
import 'package:untitled1/otp_screens/Enter_OTP_screen.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import 'package:url_launcher/url_launcher.dart';




class khatadetails_screen extends StatelessWidget {
  const khatadetails_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Color.fromRGBO(230, 231, 232,10  ) ,
        title:  Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            CircleAvatar(
              child: Text(' R',style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.black,
            ),
          ),
          Text( 'Saad Nasir',style: TextStyle(color: Colors.black),),
        ],),
      ),
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'RS 5,000',style: TextStyle(color: Color.fromRGBO(94, 211, 118, 100.1),fontWeight: FontWeight.bold,fontSize: 30),
                ),
                Text('You will give',style: TextStyle(color: Color.fromRGBO(94, 211, 118, 100.1),fontWeight: FontWeight.bold, )),
              ],
            ),
            decoration: BoxDecoration(
                color:Color.fromRGBO(94, 211, 118, 190)  ,
                borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed:  ()async{

                    final link = WhatsAppUnilink(
                      phoneNumber: '+001-(555)1234567',
                      text: "Hey! I'm inquiring about the apartment listing",
                    );
                    await launch('$link');

                }, icon:  Image.asset( 'assets/whatsapp.jpg')  ),
                IconButton(onPressed:  ()async{


                    var _result = (await sendSMS(
                        message: 'apny ghabrana nahi hai',
                        recipients: ['03132374807']).catchError((onError) {
                      print(onError);
                    }));
                    print(_result);

                }, icon: Icon(CupertinoIcons. mail   )),
                // IconButton(onPressed:  (){}, icon: Icon(CupertinoIcons.add   )),
              ],
            ) ,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => apne_diye()));
            },
            child: Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Date'),
                      Text('Cash out'),
                      Text('Cash In '),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Divider(
                    thickness: 2.0,
                  ),
                  Text('9th oct 2021'),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Others'),
                        Text('RS 500',style: TextStyle(color: Color.fromRGBO(8, 183, 53, 100),fontWeight: FontWeight.w600,fontSize: 15 ),),

                      ],
                    ),
                  ),
                  Text('Bal Rs 400',style: TextStyle(color: Color.fromRGBO(8, 183, 53, 100),fontWeight: FontWeight.w600, ),),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40,right:5),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.  spaceBetween,
          children: [
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red
              ),
              child: FlatButton(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_upward_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      'CASH OUT',
                      style: TextStyle(color: Colors.white,fontSize: 10),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => Cash_out()));
                },
              ),
            ),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green
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
                      'CASH IN ',
                      style: TextStyle(color: Colors.white,fontSize: 10),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => Cash_in()));
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
