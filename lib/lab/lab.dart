import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class lab extends StatefulWidget {
  const lab({Key? key}) : super(key: key);

  @override
  _labState createState() => _labState();
}

class _labState extends State<lab> {
  @override
  Widget build(BuildContext context)

  {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Diagnostic"),
          backgroundColor: Colors.indigo,
        ),

        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [


                    Text("Diagnostic",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 30, color: Colors.black)),

                    Text("  Eye Hospital DG Khan",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 25, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "image/lab.jpg",
                      height: 300.0,
                      width: 300.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(" Ophthalmology Diagnostic  Tests:",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 25, color: Colors.green)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("• Color Vision Test ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(" • Computerized Optic Disc Imaging and Nerve Fiber Layer Analysis (GDX, HRT, OCT)",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(" • Corneal Topography",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(" • Electro-Diagnostic Testing",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(" • Fluorescein Angiography",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(" • Ocular Coherence Tomography (OCT)",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("• Photography  of  the  Eye  ( including  retinal  photography  and  fundus  photography )",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(" • Specular Microscopy",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(" •  Visual  Field  Tests  ( Goldmann,  Humphrey,  FDT,  Octopus )",

                          style: GoogleFonts.fredokaOne(
                              fontSize:18 , color: Colors.redAccent)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(" •   Ultrasound   of  the  Eye  (  Biometry/IOL   calculation,   A-Scan,   B-Scan  )  ",
                          style: GoogleFonts.fredokaOne(
                              fontSize: 18, color: Colors.redAccent)
                      ),
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
