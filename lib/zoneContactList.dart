import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DbContactList extends StatefulWidget {
  var officeInfo;

  DbContactList(this.officeInfo);

  DbContactListState createState() => DbContactListState(this.officeInfo);
}

class DbContactListState extends State<DbContactList> {
  var officeInfo;

  DbContactListState(this.officeInfo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Color(0xFF009484),
            iconTheme: IconThemeData(color: Colors.white),
            title: Text(
              "${this.officeInfo['name']}",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
            ),
            centerTitle: true,
          )),
      body: _myListView2(context),
    );
  }

  Widget _myListView2(BuildContext context) {
    return ListView.separated(
      itemCount: 50,
      itemBuilder: (context, i) {
        return ListTile(
          onTap: () => {
            /*Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DbContactList(dbzones[i])),
            )*/
          },
          title: Text(
            'Db name',
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