//import 'package:eye_doctor/admin/delet/delet.dart';
import 'package:eye_doctor/admin/eye_camp/eye_camp_up.dart';
import 'package:eye_doctor/admin/notifi_up/not_up.dart';
import 'package:eye_doctor/eyecamp/camp.dart';
import 'package:eye_doctor/notifications/notification.dart';
//import 'package:demo/admin/eng_up/eng_up.dart';
//import 'package:demo/admin/it_up/it_up.dart';
//import 'package:demo/admin/pa_up/pa_up.dart';
//import 'package:demo/admin/scholorship%20upload/scholor_up.dart';
//import 'package:demo/admin/socio_up/pa_up.dart';
//import 'package:demo/admin/socio_up/socio.up.dart';
//import 'package:demo/admin/socio_up/socio_up.dart';
//import 'package:demo/bzu/bzu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'delete_from_firebase/delete.dart';
class admin extends StatefulWidget {
  const admin({Key? key}) : super(key: key);

  @override
  _adminState createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Admin Controle"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/bzuld.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
        padding: EdgeInsets.all(5.0),
        child: GridView.count(

          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>noti_up()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/notifi.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("notification", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>eye_camp_up()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/optt.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("CAMP", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),

            Card(
              color: Colors.transparent,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>delete()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/delete.jpg",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("CAMP", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
