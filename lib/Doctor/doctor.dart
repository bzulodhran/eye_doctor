import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class doctor extends StatefulWidget {
  const doctor({Key? key}) : super(key: key);

  @override
  _doctorState createState() => _doctorState();
}

class _doctorState extends State<doctor> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Doctor Of Optometry"),
          backgroundColor: Colors.redAccent,
        ),
        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text("Optometrist",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 20, color: Colors.black)),
                    Text("Dr. Malik Sikandar Khakhil",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.indigo[900])),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "image/sikander.jpg",
                      height: 300.0,
                      width: 300.0,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Doctor Message",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.green)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Assalam o Alaikum, Optometry is a diverse "
                        "and engaging health care profession,"
                        " which encompasses not only the detection of refractive errors,"
                        " but also detection and management of eye diseases, "
                        "fitting and prescription of contact lens, care of "
                        "patients with low vision, offering advice on problems with color vision,"
                        " it is a very vast field that goes side by side with all other medical sciences.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 12, color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("I wish you best of luck!",
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