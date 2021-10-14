import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:untitled1/khatadetails/khata_details.dart';
import 'package:untitled1/otp_screens/Enter_OTP_screen.dart';

class Khata_Screen extends StatelessWidget {
  const Khata_Screen({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 130,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: 2,
                    itemBuilder: (BuildContext ctx, index) {
                      return
                        Container(

                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'RS',style: TextStyle(color: Color.fromRGBO(8, 183, 53, 100),fontWeight: FontWeight.w900,fontSize: 20,),
                            ),
                            Text('You will give',style: TextStyle(color: Color.fromRGBO(8, 183, 53, 100),fontWeight: FontWeight.w900,fontSize: 10),),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(8, 183, 53, 180),
                            borderRadius: BorderRadius.circular(15)),
                      );
                    }),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('View reports'),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
               height: 5,
              ),
      Container(
          child: CupertinoSearchTextField(
           placeholder: 'Search here by name' ,

          )),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 5),
                height:  MediaQuery.of(context).size.height,
                child: AnimationLimiter(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 16,
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
                                    width: 150,
                                  ),
                                  Text(
                                    'Rs 31,120',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
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
                  )))]),
      ),
      floatingActionButton:
      Container(
         width: 130,
        height: 40,
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
                Icons.add_circle,
                color: Colors.white,
                size: 15,
              ),
              Text(
                'Add Customer',
                style: TextStyle(color: Colors.white,fontSize: 10),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => Enter_OTP_Screen()));
          },
        ),
      ),

    );
  }
}
