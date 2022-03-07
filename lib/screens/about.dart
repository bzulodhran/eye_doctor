import 'dart:io';
import 'package:eye_doctor/screens/bottom_curv_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          actions: <Widget>[
            ],
          title: Text("About Us"),
          backgroundColor: Colors.redAccent,
            automaticallyImplyLeading: true,
            //`true` if you want Flutter to automatically add Back Button when needed,
            //or `false` if you want to force your own back button every where
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() =>Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavBar()),),
              //onPressed:() => exit(0),
            )
        ),
        body: Column(

          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text("Our Team",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 20, color: Colors.black)),

                    Text("Developer & Designer",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.indigo[900],fontWeight: FontWeight.bold)),
                    Text("Muhammad Asad Abbas",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.red)),

                    Text("BZU SUB CAMPUSE LODHARAN",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 150.0,
                      child: ClipRRect(
                        child: Image.asset('image/a.jpeg'),
                        borderRadius: BorderRadius.circular(180.0),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("I'm Asad Abbas Student of bzu sub campus lodhran"
                        " ,working as a app developer from last sixth month."
                        "iF you have any query regarding this so feel free to contact with us",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(

              child: GridView.count(
                  crossAxisCount: 3,
                  children: <Widget> [

                    Card(
                      color: Colors.transparent,
                      margin: EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: () {
                          MapsLauncher.launchQuery ('Mahar Home, Punjab, Pakistan'); // Change Text According To Your Need

                          MapsLauncher.launchCoordinates(
                              30.072828535874685, 71.6886043243258);     },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset("image/map.png",
                                height:50,
                                width: 50,
                                fit: BoxFit.fitWidth,),
                              //Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
                              Text("Location", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      color: Colors.transparent,
                      margin: EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: () async {
                          FlutterPhoneDirectCaller.callNumber("+923487111297");
                        },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset("image/phone.png",
                                height:50,
                                width: 50,
                                fit: BoxFit.fitWidth,),
//Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
                              Text("Contact Us", style: new TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold,),)
                            ],
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      child: Card(
                        color: Colors.transparent,
                        margin: EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            launchWhatsApp();
//whatsAppOpen();
//FlutterOpenWhatsapp.sendSingleMessage("923047427068", " ");
                          },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset("image/whatsapp.png",
                                  height:50,
                                  width: 50,
                                  fit: BoxFit.fitWidth,),
//Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
                                Text("Whatsapp Us", style: new TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.bold,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ]

              ),
            )
          ],
        )
    );
  }

  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+923487111297',
      text: "Hey! I'm From Bzu Lodhran Campus",
    );
    // Convert the WhatsAppUnilink instance to a string.
    // Use either Dart's string interpolation or the toString() method.
    // The "launch" method is part of "url_launcher".
    await launch('$link');
  }

}
