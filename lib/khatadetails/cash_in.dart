import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cash_in extends StatelessWidget {
  const Cash_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(230, 231, 232, 10),
        title: Text(
          'Cash In',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey,
                    focusColor: Colors.grey,
                    hoverColor: Colors.grey,
                    prefixIcon: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 15),
                        child: Text(
                          'RS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    prefixStyle: TextStyle(color: Colors.white),
                    hintText: 'Amount',
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
                decoration: InputDecoration(
                    fillColor: Colors.grey,
                    focusColor: Colors.grey,
                    hoverColor: Colors.grey,
                    prefixStyle: TextStyle(color: Colors.white),
                    hintText: 'Details  (optional)',
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
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 120,
                  margin: EdgeInsets.only(top: 10, bottom: 5),
                  height: 50,
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range,
                        color: Colors.grey,
                      ),
                      Text('11 oct,2021'),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(230, 231, 232, 10),
                      borderRadius: BorderRadius.circular(25)),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 120,
                  margin: EdgeInsets.only(top: 10, bottom: 5),
                  height: 50,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      Text('Add Bills'),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(230, 231, 232, 10),
                      borderRadius: BorderRadius.circular(25)),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.green),
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
                    style: TextStyle(color: Colors.white, fontSize: 10),
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
    );
  }
}
