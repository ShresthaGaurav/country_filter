import 'package:country_filter/pages/disCon.dart';
import 'package:country_filter/pages/load.dart';
import 'package:country_filter/pages/single.dart';
import 'package:flutter/material.dart';
void main() =>  runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=>Loading(),
    '/dc':(context)=>DisplayCont(),
    '/sin':(context)=>SingleView(),
  },
));

