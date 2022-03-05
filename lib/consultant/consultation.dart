import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
class consultation extends StatefulWidget {
  const consultation({Key? key}) : super(key: key);

  @override
  _consultationState createState() => _consultationState();
}

class _consultationState extends State<consultation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          /*actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.contact_phone),
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => contact()),
                );
              },
            ),
          ],*/
          title: Text("Consultation"),
          backgroundColor: Colors.indigo,
        ),
        body: Column(

          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text("DOCTOR",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 20, color: Colors.black)),

                    Text("Optometrist",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.indigo[900],fontWeight: FontWeight.bold)),
                    Text("Dr. Malik Sikander Khakhil",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.red)),

                    Text("Eye Hospital DG Khan",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "image/doc.jpg",
                      height: 150.0,
                      width: 250.0,
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Text("Assalam o Alaikum, Optometry is a diverse and engaging health care profession, which encompasses not only the detection of refractive errors, but also detection and management of eye diseases, fitting and prescription of contact lens, care of patients with low vision, offering advice on problems with color vision, it is a very vast field that goes side by side with all other medical sciences.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 12, color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Feel Free To Contact Us",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 16, color: Colors.redAccent)
                      ),

                  ],
                ),
              ),
            ),
            Expanded(

              child: ListView(
                scrollDirection: Axis.horizontal,
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
                                height:80,
                                width: 80,
                                fit: BoxFit.fitWidth,),
                              //Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
                              Text("Locaton", style: new TextStyle(color: Colors.yellowAccent,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                          FlutterPhoneDirectCaller.callNumber("+923047427068");
                        },
                        splashColor: Colors.blue,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset("image/phone.png",
                                height:80,
                                width: 80,
                                fit: BoxFit.fitWidth,),
//Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
                              Text("Call Us", style: new TextStyle(color: Colors.yellowAccent,fontSize: 14.0,fontWeight: FontWeight.bold,),)
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
                            openwhatsapp();
//whatsAppOpen();
//FlutterOpenWhatsapp.sendSingleMessage("923047427068", " ");
                          },
                          splashColor: Colors.blue,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset("image/whatsapp.png",
                                  height:80,
                                  width: 80,
                                  fit: BoxFit.fitWidth,),
//Icon(Icons.notifications_active_outlined,size: 70.0,color: Colors.green,),
                                Text("Whatsapp Us", style: new TextStyle(color: Colors.yellowAccent,fontSize: 12.0,fontWeight: FontWeight.bold,),)
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
  openwhatsapp() async{
    var whatsapp ="+923006567962";
    var whatsappURl_android = "whatsapp://send?phone="+whatsapp+"&text=Hello Respected Dr.!!! ";
    ///var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
    if( await canLaunch(whatsappURl_android)){
      await launch(whatsappURl_android);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text("whatsapp no installed")));
    }


  }


}
