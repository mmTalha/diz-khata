import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/otp_screens/Enter_OTP_screen.dart';








class apne_diye extends StatelessWidget {
  const apne_diye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(230, 231, 232, 10),

        title: Text('Paisy liye ',style: TextStyle(color: Colors.black,),),
        leading: Icon(Icons.arrow_back,color: Colors.black,),
       actions: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Icon(CupertinoIcons.delete_simple,color: Colors.red,),
         ),

       ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Container(
              padding: EdgeInsets.all(10),
             margin: EdgeInsets.only(top: 10,bottom: 5),
              height: 60,
              width: 300,
              child:
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Text( 'Rs 88',style: TextStyle(color: Colors.green)),
                     ],
                   ),

              decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 231, 232, 10),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              margin: EdgeInsets.only(top: 10,bottom: 5),
               height: 50,
               child:
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text( 'Description',style: TextStyle(color: Colors.black)),
                 ],
               ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 231, 232, 10),
                  borderRadius: BorderRadius.circular(5)),
            ),
              Container(

                padding: EdgeInsets.all(10),
                width: 110,
                margin: EdgeInsets.only(top: 10,bottom: 5),
                height: 50,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text( 'Aug 3rd 2021',style: TextStyle(color: Colors.black)),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(230, 231, 232, 10),
                    borderRadius: BorderRadius.circular(25)),
              ),
               SizedBox(height: 30,),
               Row(
                 children: [
                   Text('Hisaab Ka Parcha',style: TextStyle(color:   Colors.grey,fontFamily: 'Montserrat-Regular')),
                   Icon(Icons.arrow_drop_up_sharp,)
                 ],
               ),
              SizedBox(height: 30,),
              Container(
                width: 500,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Color.fromRGBO(230, 231, 232, 10),// set border color
                      width: 3.0),   // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text( 'Hisaab Ka Parcha',style: TextStyle(color:   Colors.black,fontSize: 20)),

                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text( 'Aug 3 2021,10:30',style: TextStyle(color:   Colors.black,fontSize: 10)),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       padding: EdgeInsets.all( 5),
                        height: 80,
                       width: 300,
                       child:
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Text('  Apne Diye',style: TextStyle(color: Colors.white)),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Text('  Rs 88',style: TextStyle(color: Colors.white,fontSize:25)),
                           ),
                         ],
                       ),

                       decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(5)),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text( 'Tafseel',style: TextStyle(color:   Colors.grey,fontSize: 15)),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text( 'dukan ki details',style: TextStyle(color:   Colors.grey,fontSize: 15)),
                   ),
                 ],
               ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row(
                  children: [
                    Icon(Icons.lock,color: Colors.green,size: 15,),
                    Text('Yeh Entry backup k zariye mehfooz hai',style: TextStyle(color:   Colors.green,fontFamily: 'Montserrat-Regular')),

                  ],
                ),
              ),

          ],
        ),
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
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text(
                      'Edit',
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
                      Icons.share,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text(
                      'Share',
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
          ],
        ),
      ),
    );

  }
}







