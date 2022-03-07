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
          backgroundColor: Colors.redAccent,
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
                      height: 250.0,
                      width: 250.0,
                    ),
                    Text(" Ophthalmology Diagnostic  Tests:",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredokaOne(
                            fontSize: 25, color: Colors.green)
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    UnorderedList([
                      "Color Vision Test",
                      "Computerized Optic Disc Imaging and Nerve Fiber Layer Analysis (GDX, HRT, OCT)"
                      "Corneal Topography",
                      "Electro-Diagnostic Testing"
                          "Fluorescein Angiography",
                      "Ocular Coherence Tomography (OCT)"
                          "Photography  of  the  Eye  ( including  retinal  photography  and  fundus  photography )",
                      "Specular Microscopy"
                          "Visual  Field  Tests  ( Goldmann,  Humphrey,  FDT,  Octopus )",
                      "Ultrasound   of  the  Eye  (  Biometry/IOL   calculation,   A-Scan,   B-Scan  )"
                    ]),
                  ],
                ),
              ),
            ),
          ],
        )

    );
  }
}

class UnorderedList extends StatelessWidget {
  UnorderedList(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• ", style: GoogleFonts.fredokaOne(fontSize: 18, color: Colors.redAccent)),
        Expanded(
          child: Text(text, style: GoogleFonts.fredokaOne(fontSize: 15, color: Colors.black)),
        ),
      ],
    );
  }
}
