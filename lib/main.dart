import 'package:country_filter/pages/disCon.dart';
import 'package:country_filter/pages/load.dart';
import 'package:flutter/material.dart';
void main() =>  runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=>Loading(),
    '/dc':(context)=>DisplayCont(),
  },
));

