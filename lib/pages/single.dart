import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingleView extends StatefulWidget {
  @override
  _SingleViewState createState() => _SingleViewState();
}

class _SingleViewState extends State<SingleView> {
  @override
  Widget build(BuildContext context) {
    final Map mc = ModalRoute.of(context).settings.arguments;
    List border = [];

    border = mc['borders'];
    //  print(ListofBor(border));
    return Scaffold(
        appBar: AppBar(
          title: Text('Country details'),
        ),
        body: SafeArea(
            child: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow, width: 3)),
                width: (MediaQuery.of(context).size.width),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          mc['name'],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black87,
                      thickness: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Capital city",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          mc['capital'],
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black87,
                      thickness: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Region", style: TextStyle(fontSize: 20)),
                        Text(
                          mc['region'],
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black87,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Current population",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          mc['population'].toString(),
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black87,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "Name of  ${border.length} borders are:",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          ListofBor(border),textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black87,
                      thickness: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Flag", style: TextStyle(fontSize: 20)),
                        SvgPicture.network(mc['flag'], height: 70)
                      ],
                    ),
                  ],
                ),
              )),
        ])));
  }
}

String ListofBor(List bor) {
  String bord = "";
  for (int i = 0; i < bor.length; i++) {
    bord += ("${bor[i]}\n");
  }

  print(bord);
  return bord;
}
