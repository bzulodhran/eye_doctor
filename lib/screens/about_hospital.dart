import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';


class about_hospital extends StatefulWidget {
  const about_hospital({Key? key}) : super(key: key);

  @override
  _about_hospitalState createState() => _about_hospitalState();
}

class _about_hospitalState extends State<about_hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            actions: <Widget>[
            ],
            title: Text("About DG Khan Eye Hospital"),
            backgroundColor: Colors.redAccent,
            automaticallyImplyLeading: true,
            //`true` if you want Flutter to automatically add Back Button when needed,
            //or `false` if you want to force your own back button every where
        ),
        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(" DG Khan Eye Hospital",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 15, color: Colors.green)),
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 120.0,
                      child: ClipRRect(
                        child: Image.asset('image/splash1.jpg'),
                        borderRadius: BorderRadius.circular(180.0),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    Text("D.G. Eye Hospital is located in Balakh Sarwar City,"
                        " Jam-pur Road, Dera Ghazi khan,"
                        " Owned by Dr. Malik Sikander Khakhil (MBBS, DOMS, FICS)."
                        "D.G. Eye Hospital is committed to provide Eye care with latest ophthalmic technology."
                        "Eye Hospital is leaders in their field and offer a consultant-only service to all patients requiring eye care or surgery."
                        " Every consultant is qualified to treat common eye conditions but each one also has a particular area of interest, "
                        "ensuring that patients get the best possible outcome, no matter what the diagnosis.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("I wish you best of luck !",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 16, color: Colors.redAccent)
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
