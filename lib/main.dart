import 'package:flutter/material.dart';

import 'Desktop.dart';
import 'Mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LayoutBuilder(
            builder:(context,constranints){
              if(constranints.maxWidth <1070 || constranints.maxHeight<466){
                return Mobile();
              }else{
                return Desktop();
              }
            })
    );
  }
}
