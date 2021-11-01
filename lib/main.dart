// // Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// // for details. All rights reserved. Use of this source code is governed by a
// // BSD-style license that can be found in the LICENSE file.
//
// library _fe_analyzer_shared.scanner.string_canonicalizer;
//
// import 'dart:convert';
//
// class Node {
//   dynamic /* String | List<int> */ data;
//   int start;
//   int end;
//   String payload;
//   Node next;
//   Node(this.data, this.start, this.end, this.payload, this.next);
// }
//
// /// A hash table for triples:
// /// (list of bytes, start, end) --> canonicalized string
// /// Using triples avoids allocating string slices before checking if they
// /// are canonical.
// ///
// /// Gives about 3% speedup on dart2js.
// class StringCanonicalizer {
//   /// Mask away top bits to keep hash calculation within 32-bit SMI range.
//   static const int MASK = 16 * 1024 * 1024 - 1;
//
//   static const int INITIAL_SIZE = 8 * 1024;
//
//   /// Linear size of a hash table.
//   int _size = INITIAL_SIZE;
//
//   /// Items in a hash table.
//   int _count = 0;
//
//   /// The table itself.
//   List<Node> _nodes = new List<Node>(INITIAL_SIZE);
//
//   static String decode(List<int> data, int start, int end, bool asciiOnly) {
//     String s;
//     if (asciiOnly) {
//       s = new String.fromCharCodes(data, start, end);
//     } else {
//       s = new Utf8Decoder(allowMalformed: true).convert(data, start, end);
//     }
//     return s;
//   }
//
//   static int hashBytes(List<int> data, int start, int end) {
//     int h = 5381;
//     for (int i = start; i < end; i++) {
//       h = ((h << 5) + h + data[i]) & MASK;
//     }
//     return h;
//   }
//
//   static int hashString(String data, int start, int end) {
//     int h = 5381;
//     for (int i = start; i < end; i++) {
//       h = ((h << 5) + h + data.codeUnitAt(i)) & MASK;
//     }
//     return



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/prefs/theme_provider.dart';

import 'Tab_bar_Screens/dashborad_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: MyApp()));
}

// Future<void> mains() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   var status = prefs.getBool('isLoggedIn') ?? false;
//   print(status);
//   runApp(MaterialApp(home: status == true ? ChangeNotifierProvider(
//        create: (context) => EligiblityScreenProvider(),  child: MyApp()) : mainpage()));
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home(),
    );
  }
}
