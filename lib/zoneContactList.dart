import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';

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
      body: _myListView3(context),
    );
  }

  Widget _myListView3(BuildContext context) {
    ScrollController _arrowsController = ScrollController();
    return Scaffold(
      body: Center(
        child: Container(
          child: DraggableScrollbar.arrows(
            // labelTextBuilder: (double offset) => Text("${i}"),
            controller: _arrowsController,
            scrollbarAnimationDuration: Duration(seconds: 1),
            scrollbarTimeToFade: Duration(seconds: 1),
            backgroundColor: Colors.teal,
            child: ListView.builder(
              controller: _arrowsController,
              itemBuilder: (context, i) {
                return GestureDetector(
                    onLongPress: () {
                      showToast("text coppied");
                    },
                    onTapUp: (val) {
                      setState(() {
                        // _selectedIndex = null;
                      });
                    },
                    child: Card(
                      child: Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text("sdsdsd"),
                                        Text("sdsd"),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 0),
                                        child: Text("asasa"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 0),
                                        child: Image.asset(''),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                height: 2.0,
                                color: Colors.teal,
                              )
                            ],
                          )),
                    ));
              },
              itemCount: 90,
            ),
          ),
        ),
      ),
    );
  }
}