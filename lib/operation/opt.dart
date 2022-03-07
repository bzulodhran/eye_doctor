import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class opt extends StatefulWidget {
  const opt({Key? key}) : super(key: key);

  @override
  _optState createState() => _optState();
}

class _optState extends State<opt> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Operation Theather"),
          backgroundColor: Colors.redAccent,
        ),

        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text("Operation Theather",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 20, color: Colors.black)),

                    Text("Eye Hospital DG Khan",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "image/ope.jpg",
                      height: 300.0,
                      width: 300.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Doctor Message",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.green)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("There is a great facility of OT(Operation Theator ) in our hospital. "
                        "Operating rooms are spacious, clean and well-lit, "
                        "typically with overhead Surgical Lights and "
                        " also viewing screens and monitors.OT have controlled temperature and humidity."
                        " Rooms are supplied with wall suction, oxygen, and possibly other anesthetic gases."
                        " Key equipment consists of the Operating Table and the Anesthesia cart and there are tables to set up instruments."
                        " There is storage space for common surgical supplies. "
                        "There are containers for disposables. "
                        "Outside the operating room is a dedicated scrubbing area that is used by surgeons, anesthetists, ODPs (operating department practitioners), "
                        "and nurses prior to surgery.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 12, color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("I wish you best of luck ",
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
