import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:untitled1/otp_screens/Enter_OTP_screen.dart';

class Cash_Book_Screen extends StatelessWidget {
  const Cash_Book_Screen({Key? key}) : super(key: key);

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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 231, 232, 10),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    width: 90,
                    height: 50,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Account Details',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 231, 232, 10),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cash out',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cash In',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height,
                child: AnimationLimiter(
                    child:  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 16,
                      itemBuilder: (BuildContext context, index) =>
                          Column(children: [
                              AnimationConfiguration.staggeredList(
                              position: index,
                              duration: const Duration(milliseconds: 375),
                              child: SlideAnimation(
                                  verticalOffset: 50.0,
                                  child: FadeInAnimation(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.only(left: 5, right: 5),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 50,
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Aug 3 2021',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 90,
                                            height: 50,
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Book Sale',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            height: 50,
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '400',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '400',
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  )
                              )
                          ),
                         Divider(
                           color: Colors.grey,thickness: 0.5,
                         )
                    ]),
                    )

                )
                          )



          ],
        ),
      ),
    );
  }
}
