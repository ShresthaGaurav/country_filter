import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DisplayCont extends StatefulWidget {
  @override
  _DisplayContState createState() => _DisplayContState();
}

class _DisplayContState extends State<DisplayCont> {
  List names = [];

  @override
  Widget build(BuildContext context) {
    names = ModalRoute.of(context).settings.arguments;

    print(names[1]['flag']);
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed('/sin', arguments: names[index]);
                },
                title: Text(
                  names[index]['name'],
                  style: TextStyle(fontSize: 18, color: Colors.teal),
                ),
                leading: CircleAvatar(
                 child: SvgPicture.network((names[index]['flag'])),
                 backgroundColor: Colors.transparent,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
