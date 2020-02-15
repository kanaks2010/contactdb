import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DbContactList extends StatefulWidget {
  var officeInfo;

  DbContactList(this.officeInfo);

  DbContactListState createState() => DbContactListState(this.officeInfo);
}

class DbContactListState extends State<DbContactList> {
  var officeInfo;

  DbContactListState(this.officeInfo);

  List ContactList = [];
  List allContact = [
    {
      "Aditional Commissioner Office": [
        {
          "name": "",
          "mobileno": 171956558,
          "designation": "Commissioner"
        },
        {
          "name": "",
          "mobileno": 171956558,
          "designation": "DG"
        },
        {
          "name": "",
          "mobileno": 171956558,
          "designation": "Sub DG"
        },
        {
          "name": "",
          "mobileno": 171956558,
          "designation": "Sub Inspector"
        }
      ]
    },
    {
      "Joint Police Commissioner Office": [
        {
          "name": "",
          "mobileno": 171956558,
          "designation": "Commissioner"
        },
        {
          "name": "",
          "mobileno": 171956558,
          "designation": "DG"
        },
        {
          "name": "",
          "mobileno": 171956558,
          "designation": "Sub DG"
        },
        {
          "name": "",
          "mobileno": 171956558,
          "designation": "Sub Inspector"
        }
      ]
    }
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {

    });
  }




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

    showToast(String txt) {
      Fluttertoast.showToast(
          msg: "${txt}",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.teal,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    return ListView.separated(
      itemCount: ContactList != null ? ContactList.length : 0,
      itemBuilder: (context, i) {
        return ContactList != null ? GestureDetector(
          onLongPress: ()=>{
            showToast("text coppied"),
          },
          child: Padding(padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                GestureDetector(
                  child: new Text('Don\'t have an account?',
                      style: new TextStyle(color: Color(0xFF2E3233))),
                  onTap: () {},
                ),
                GestureDetector(
                    onTap: () {},
                    child: new Text(
                      'Register.',
                      style: new TextStyle(
                          color: Color(0xFF84A2AF),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ): CircularProgressIndicator();
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}