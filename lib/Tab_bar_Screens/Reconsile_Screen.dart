import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:untitled1/khatadetails/khata_details.dart';
import 'package:untitled1/otp_screens/Enter_OTP_screen.dart';




class Reconsile_Screen extends StatelessWidget {
  const Reconsile_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Column(
            children: [
              Text(
                'Hello,',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              Text(' Saad Amir ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        backgroundColor: Color.fromRGBO(230, 231, 232, 10),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child:  Text(' R',style: TextStyle(color: Colors.white),),
              backgroundColor: Color.fromRGBO(55, 116, 190,   50),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(

        child: Column(
            children: [

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: CupertinoSearchTextField(


        ),
            ),
          ),
              AnimationLimiter(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                         scrollDirection: Axis.vertical,
                        itemCount:66,
                        itemBuilder: (BuildContext context, index) =>
                            AnimationConfiguration.staggeredList(
                              position: index,
                              duration: const Duration(milliseconds: 375),
                              child: SlideAnimation(
                                verticalOffset: 50.0,
                                child: FadeInAnimation(
                                  child:

                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              fullscreenDialog: true,
                                              builder: (context) => khatadetails_screen()));
                                    },
                                    child: Container(
                                     padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Divider(
                                            thickness: 2.0,
                                          ),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                child:  Text(' R',style: TextStyle(color: Colors.white),),
                                                backgroundColor: Color.fromRGBO(55, 116, 190,   50),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text('Saad Rao'),
                                              SizedBox(
                                                width: 120,
                                              ),
                                              Container(
                                                 width: 90,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
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
                                                  onPressed: null,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.center,

                                                    children: [


                                                      Text(
                                                        'Reconcile',
                                                        style: TextStyle(color: Colors.white,fontSize: 10),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 2.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ),
                              ),
                            )
                    ),
                  ))]),
      ),


    );
  }
}
