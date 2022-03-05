  import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class gs extends StatefulWidget {
  const gs({Key? key}) : super(key: key);

  @override
  _gsState createState() => _gsState();
}

class _gsState extends State<gs> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: new AppBar(
          title: Text("Glasses Store"),
          backgroundColor: Colors.indigo,
        ),

        body: ListView(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text("Glasses Store",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 20, color: Colors.black)),

                    Text("Eye Hospital DG Khan",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "image/glas.jpg",
                      height: 300.0,
                      width: 300.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Doctore Message",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 24, color: Colors.green)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Assalam o Alaikum, Optometry is a diverse and engaging health care profession, which encompasses not only the detection of refractive errors, but also detection and management of eye diseases, fitting and prescription of contact lens, care of patients with low vision, offering advice on problems with color vision, it is a very vast field that goes side by side with all other medical sciences.",
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
