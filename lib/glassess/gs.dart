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
          backgroundColor: Colors.redAccent,
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
                    Text("We are committed to excellence by providing outstanding patient service and quality products."
                       " We pride ourselves on our attention to personal needs,"
                        " the quality of our work, and the knowledge and experience of our staff. "
                        "Patient satisfaction demands the services of well-trained, educated and licensed opticians"
                        " who can help you obtain the best possible vision. "
                        "Our Optical Shop prides itself on understanding and meeting your every need by delivering the highest quality service,"
                       " with the goal of maintaining a long-lasting relationship with you.",
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
