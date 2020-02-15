import 'package:contactdb/zoneContactList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DbZone extends StatefulWidget {
  DbZoneState createState() => DbZoneState();
}

class DbZoneState extends State<DbZone> {
  final dbzones = [
    {'id': 0, 'name': ' Aditional Commissioner Office'},
    {'id': 1, 'name': ' Joint Police Commissioner Office'},
    {'id': 2, 'name': ' DC DB East'},
    {'id': 3, 'name': ' DC DB West'},
    {'id': 4, 'name': ' DC DB South'},
    {'id': 5, 'name': ' DC DB North'},
    {'id': 6, 'name': ' DC DB Serious Crime'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Color(0xFF009484),
              iconTheme: IconThemeData(color: Colors.white),
              title: Text(
                "DB Office",
                textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0)
              ),
              centerTitle: true,
            )),
        body: _myListView2(context));
  }

  // Text(titles[index])
  Widget _myListView2(BuildContext context) {
    return ListView.separated(
      itemCount: dbzones.length,
      itemBuilder: (context, i) {
        return ListTile(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DbContactList(dbzones[i])),
            )
          },
          title: Text(
            dbzones[i]['name'],
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
