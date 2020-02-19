import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dbzone.dart';

void main() =>
    runApp(MaterialApp(
      theme:
      ThemeData(primaryColor: Colors.teal, accentColor: Colors.cyanAccent),
      debugShowCheckedModeBanner: false,
      home: DbSplashScreen(),
    ));

class DbSplashScreen extends StatefulWidget {
  @override
  _DbSplashScreenState createState() => new _DbSplashScreenState();
}

class _DbSplashScreenState extends State<DbSplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => DbZone())));
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Stack(

        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.teal),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(

                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 80.0,
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: new Image.asset('assets/img/dblogo.png'),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "DB Contacts",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top: 20.0),),
                      Text("Welcome to db contact",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w400, fontSize: 16.0),)
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


/*
  deviceInformation() async {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    DatabaseReference reference = FirebaseDatabase.instance.reference();
    var data = {
      "model": '${androidInfo.model}',
      "androidId": '${androidInfo.androidId}',
      "manufacturer": '${androidInfo.manufacturer}',
      "id": '${androidInfo.id}',
      "board": '${androidInfo.board}',
      "bootloader": '${androidInfo.bootloader}',
      "brand": '${androidInfo.brand}',
      "version_release": '${androidInfo.version.release}',
      "version_baseOS": '${androidInfo.version.baseOS}',
      "version_codename": '${androidInfo.version.codename}',
      "device": '${androidInfo.device}',
      "display": '${androidInfo.display}',
      "fingerprint": '${androidInfo.fingerprint}',
      "host": '${androidInfo.host}',
      "hashCode": '${androidInfo.hashCode}',
      'created_at': '${createTime}'
    };
    var db = FirebaseDatabase.instance
        .reference()
        .child("user_device_information")
        .child('${androidInfo.androidId}')
        .reference();
    db.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;

      if (values == null) {
        reference
            .child('user_device_information')
            .child('${androidInfo.androidId}')
            .set(data);
      }
    });

    var dbcontact = {
      'name': 'Amanur Rahman',
      'mobile': '01719839141',
      'designation': 'Fronted Developer',
      'address': 'Dhaka, Bangladesh',
      'email': 'kanaks2010@gmail.com',
    };

    var dbpolice = FirebaseDatabase.instance
        .reference()
        .child("db_police_contact")
        .child('${androidInfo.androidId}')
        .reference();

    dbpolice.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;
      var date = new DateTime.now().millisecondsSinceEpoch;
      */
class ContactList {
  String name, mobile, designation, address, email;

  ContactList(this.name, this.mobile, this.designation, this.address, this.email);

}

List<ContactList> contactLists = [];


//DBlist
/*
@override
void initState() {
  super.initState();
  // DatabaseReference contacts = FirebaseDatabase.instance.reference().child('db_police_contact');

  */
/*contacts.once().then((DataSnapshot snap){
      var KEYS = snap.value.keys;
      var DATA = snap.value;
      contactLists.clear();

      for(var individualKey in KEYS){
        ContactList contactList = new ContactList (
            DATA[individualKey]['name'],
            DATA[individualKey]['mobile'],
            DATA[individualKey]['designation'],
            DATA[individualKey]['address'],
            DATA[individualKey]['email']
        );
        contactLists.add(contactList);
      }

      setState(() {
        print('Contact ' + '${contactLists.length}');
        print('Contact ' + '${contactLists[0].email}');
      });
    });*//*

}
*/


/*
Widget newWidget (){
  ListView.builder(
    itemCount: 10,
    itemBuilder: (context, i) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Text('H'),
            ),
            title: Text(
              'Md. Amanur Rahman',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            subtitle: Text(
              '+8801719839141',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            ),
            trailing: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: GestureDetector(
                onTap: ()=>{
                  print('Detected'),
                },
                child: Text('i', style:
                TextStyle(color: Colors.teal, fontWeight: FontWeight.w400),),
              ),
            ),
            onTap: () => {
              print('taped'),
              launch("tel://21213123123")
            },
            onLongPress: () => {
              print('onLongPress'),
            },
          ),
          Divider(
            thickness: 1,
          )
        ],
      );
    },
  ),
}*/
