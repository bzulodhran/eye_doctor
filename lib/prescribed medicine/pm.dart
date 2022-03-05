import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class pm extends StatefulWidget {
  const pm({Key? key}) : super(key: key);

  @override
  _pmState createState() => _pmState();
}

class _pmState extends State<pm> {
  @override
  Widget build(BuildContext context)

  {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Emergancy Medicine"),
          backgroundColor: Colors.indigo,
        ),
        body: ListView(
          children: [
            Container(
                child: Column(
                  children: [
                    Text("Eye Drops",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 30, color: Colors.black)),
                    Text("Vidarabine",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14, color: Colors.indigo[900])),
                    Text("Moxifloxacin",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14, color: Colors.indigo[900])),
                    Text("Tobramycin",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14, color: Colors.indigo[900])),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Pain Release Teblits",
                        style: GoogleFonts.fredokaOne(
                            fontSize: 25, color: Colors.redAccent)
                    ),
                    Text("Lotemax. loteprednol",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14, color: Colors.blue)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Multi Vitamin",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 25, color: Colors.redAccent)
                    ),
                    Text("Sight On Energy Plus",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 14, color: Colors.blue)
                    ),
                  ],

              ),
            ),
          ],
        )
    );
  }


}
