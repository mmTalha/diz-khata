import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/khatadetails/customer.dart';
import 'package:untitled1/khatadetails/khata_details.dart';
import 'package:untitled1/prefs/theme_provider.dart';



class supplier extends StatelessWidget {
  const supplier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(),
      child: Builder(builder: (context,) {


        return Scaffold(
          // appBar: AppBar(
          //   automaticallyImplyLeading: false,
          //   centerTitle: false,
          //   title: Padding(
          //     padding: const EdgeInsets.only(right: 50),
          //     child: Column(
          //       children: [
          //         Text(
          //           'Hello,',
          //           style: TextStyle(
          //               fontSize: 20,
          //               color: Colors.black,
          //               fontWeight: FontWeight.w300),
          //         ),
          //         Text(' Saad Amir ',
          //             style: TextStyle(
          //                 fontSize: 20,
          //                 color: Colors.black,
          //                 fontWeight: FontWeight.w600)),
          //       ],
          //     ),
          //   ),
          //   backgroundColor: Color.fromRGBO(230, 231, 232, 10),
          //   actions: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: CircleAvatar(
          //         child:  Text(' R',style: TextStyle(color: Colors.white),),
          //         backgroundColor: Color.fromRGBO(55, 116, 190,   50),
          //       ),
          //     ),
          //   ],
          // ),
          body:
          Consumer<ThemeProvider>(
              builder: (context, provider, child) {
                return  SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 130,
                          child: GridView.builder(
                              gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                              itemCount: 2,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RS 0',
                                        style: TextStyle(
                                          color: Color.fromRGBO(8, 183, 53, 100),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'You will give',
                                        style: TextStyle(
                                            color: Color.fromRGBO(8, 183, 53, 100),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 10),
                                      ),
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
                              placeholder: 'Search here by name',
                            )),
                        SizedBox(
                          height: 5,
                        ),



                        Container(
                            width: MediaQuery.of(context).size.width,

                            padding: EdgeInsets.only(left: 10, right: 5),
                            height: MediaQuery.of(context).size.height,
                            child: AnimationLimiter(child:
                            FutureBuilder(
                              // future:  Provider.of<ThemeProvider>(context, listen: true).getkhatausers()     ,
                              future: provider. getksupplierusers() ,
                              builder: (BuildContext ctx, AsyncSnapshot<List>   snapshot) =>
                              snapshot.hasData
                                  ? ListView.builder(

                                  itemCount:snapshot.data!.length,
                                  itemBuilder: (BuildContext context, index) =>
                                      AnimationConfiguration.staggeredList(
                                        position: index,
                                        duration: const Duration(milliseconds: 375),
                                        child: SlideAnimation(
                                          verticalOffset: 50.0,
                                          child: FadeInAnimation(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        fullscreenDialog: true,
                                                        builder: (context) =>
                                                            khatadetails_screen()));
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
                                                          child: Text(
                                                            '${snapshot.data![index]['customername'][0]}',
                                                            style: TextStyle(
                                                                color:
                                                                Colors.white),
                                                          ),
                                                          backgroundColor:
                                                          Color.fromRGBO(
                                                              55, 116, 190, 50),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text('${snapshot.data![index]['customername']}'),
                                                        SizedBox(
                                                          width: MediaQuery.of(context). size.width/2,
                                                        ),
                                                        Text(
                                                          'Rs 31,120',
                                                          style: TextStyle(
                                                              color: Colors.green,
                                                              fontWeight:
                                                              FontWeight.bold),
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
                                      )) :
                              Center(
                                  child: Text('loading')),
                            )   )
                        )



                      ]

                    // By default, show a loading spinner.

                  ),);}
          ),
          // floatingActionButton:
          //
          // Container(
          //    width: 130,
          //   height: 40,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(25),
          //     gradient: LinearGradient(
          //       colors: [
          //         Color.fromRGBO(18, 119, 197, 10),
          //         Color.fromRGBO(94, 211, 118, 10)
          //       ],
          //       begin: FractionalOffset.centerLeft,
          //       end: FractionalOffset.centerRight,
          //     ),
          //   ),
          //   child: FlatButton(
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.add_circle,
          //           color: Colors.white,
          //           size: 15,
          //         ),
          //         Text(
          //           'Add Customer',
          //           style: TextStyle(color: Colors.white,fontSize: 10),
          //         ),
          //       ],
          //     ),
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               fullscreenDialog: true,
          //               builder: (context) => Enter_OTP_Screen()));
          //     },
          //   ),
          // ),
          floatingActionButton: SpeedDial(
            /// both default to 16
            marginEnd: 18,
            marginBottom: 20,

            /// This is ignored if animatedIcon is non null
            icon: Icons.add,
            activeIcon: Icons.remove,
            // iconTheme: IconThemeData(color: Colors.grey[50], size: 30),
            /// The label of the main button.
            // label: Text("Open Speed Dial"),
            /// The active label of the main button, Defaults to label if not specified.
            // activeLabel: Text("Close Speed Dial"),
            /// Transition Builder between label and activeLabel, defaults to FadeTransition.
            // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
            /// The below button size defaults to 56 itself, its the FAB size + It also affects relative padding and other elements
            buttonSize: 56.0,
            visible: true,

            /// If true user is forced to close dial manually
            /// by tapping main button and overlay is not rendered.
            closeManually: false,

            /// If true overlay will render no matter what.
            renderOverlay: false,
            curve: Curves.bounceIn,
            overlayColor: Colors.black,
            overlayOpacity: 0.5,
            onOpen: () => print('OPENING DIAL'),
            onClose: () => print('DIAL CLOSED'),
            tooltip: 'Speed Dial',
            heroTag: 'speed-dial-hero-tag',
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 8.0,
            shape: CircleBorder(),
            // orientation: SpeedDialOrientation.Up,
            // childMarginBottom: 2,
            // childMarginTop: 2,
            children: [
              SpeedDialChild(
                child: Icon(Icons.accessibility),
                backgroundColor: Colors.white,
                label: 'Customer',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (context) => customer())),
                onLongPress: () => print('FIRST CHILD LONG PRESS'),
              ),
              SpeedDialChild(
                child: Icon(Icons.app_registration),
                backgroundColor: Colors.blue,
                label: 'Supplier',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () => print('SECOND CHILD'),
                onLongPress: () => print('SECOND CHILD LONG PRESS'),
              ),
            ],
          ),
        );
      }
      ),
    );
  }
}
