import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  List con_name = [];

  getCon_name() async {
    try {
      var res = await get('https://restcountries.eu/rest/v2/all');
      return jsonDecode(res.body);
    } catch (e) {
      print('error is $e');
    }
  }

  void initState() {
    getCon_name().then((data) {
      setState(() {
        con_name = data;
        loader(con_name);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list of country'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SpinKitFadingCircle(
              color: Colors.tealAccent,
              size: 30,
            ),
          )
        ],
      ),
    );
  }

  void loader(List cont) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/dc', arguments: cont);
      //  print(cont.length);
    });
  }
}
