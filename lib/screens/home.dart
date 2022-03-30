import 'package:eye_doctor/Doctor/doctor.dart';
import 'package:eye_doctor/admin/adminlogin/adminlogin.dart';
import 'package:eye_doctor/consultant/consultation.dart';
import 'package:eye_doctor/eyecamp/camp.dart';
import 'package:eye_doctor/glassess/gs.dart';
import 'package:eye_doctor/lab/lab.dart';
import 'package:eye_doctor/medical%20store/ms.dart';
import 'package:eye_doctor/notifications/notification.dart';
import 'package:eye_doctor/operation/opt.dart';
import 'package:eye_doctor/oppointment/contact.dart';
import 'package:eye_doctor/oppointment/opp.dart';
import 'package:eye_doctor/prescribed%20medicine/pm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(
            icon: (Image.asset("image/notifi.png",
                height:30,
                width: 30,
                fit: BoxFit.fitWidth)),
            //icon: const Icon(Icons.notifications_active_outlined),
            //iconSize: 30,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notification()),
              );
            },
          ),
        ],
        title: Text("Doctor Of Optometry"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Dr. Malik Sikander Khakhil", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
              accountEmail: new Text("Optometrist"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("image/doc.jpg"),
              ),
              decoration: new BoxDecoration(color: Colors.redAccent),
            ),
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text("Malik Sikander Khakhil"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("+923006567962"),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("asadabbasarbi.eye@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text("Whatsapp us at +923006567962"),
            ),
            SizedBox(
              height: 250,
            ),
            TextButton(
              onPressed:( ) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => adminlogin()));
              } ,
              child: Text(''),
            ),
          ],
        ),
      ),
      //backgroundColor: Color(0xFF25116a),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/bg.jpg"),
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
                    MaterialPageRoute(builder: (context) => doctor()),
                  );
                },
                splashColor: Colors.blue[500],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/doctor.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //   Icon(Icons.person,size: 70.0,color: Colors.green,),
                      Text("Doctor", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => consultation()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/consultation.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.security_outlined,size: 70.0,color: Colors.green,),
                      Text("Consultation", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => lab()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/lab.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.groups_outlined,size: 70.0,color: Colors.green,),
                      Text("Diagnostic", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => opt()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/opt.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.people,size: 70.0,color: Colors.green,),
                      Text("Operation Theater", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) =>  ms()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/ms.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.school_outlined,size: 70.0,color: Colors.green,),
                      Text("Medical Store", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => ContactPage()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/oppoin.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.phonelink_outlined,size: 70.0,color: Colors.green,),
                      Text("Appointment", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => gs()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/shop.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.book_outlined,size: 70.0,color: Colors.green,),
                      Text("Glasses Store", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => pm()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/pm.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.gavel_outlined,size: 70.0,color: Colors.green,),
                      Text("Emergency Medicine", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                    MaterialPageRoute(builder: (context) => eye_camp()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("image/optt.png",
                        height:100,
                        width: 100,
                        fit: BoxFit.fitWidth,),
                      //Icon(Icons.gavel_outlined,size: 70.0,color: Colors.green,),
                      Text("EYE CAMPS", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                ),
              ),
            ),


          ],),
      ),
    );
  }
}
