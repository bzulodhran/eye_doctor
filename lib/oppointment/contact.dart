import 'package:eye_doctor/screens/bottom_curv_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';

import 'package:ndialog/ndialog.dart';

 class ContactPage extends StatefulWidget {
   const ContactPage({Key? key}) : super(key: key);
 
   @override
   _ContactPageState createState() => _ContactPageState();
 }
 final nameController = TextEditingController();
 final subjectController = TextEditingController();
 final emailController = TextEditingController();
 final messageController = TextEditingController();


void _resetItem(){
  nameController.clear();
  subjectController.clear();
  emailController.clear();
  messageController.clear();

}


Future sendEmail() async{
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const serviceId = "service_jqufzxt";
  const templateId = "template_w3tlzij";
  const userId = "f9YtogExh2mZny41c";
  final response = await http.post(
      url,
      headers: {
       'origin': 'http://localhost',
        'Content-Type':'application/json'},
      body: json.encode({
       "service_id": serviceId,
       "template_id": templateId,
       "user_id": userId,
       "template_params":{
        "name":nameController.text,
        "subject":subjectController.text,
        "message":messageController.text,
        "user_email":emailController.text
      }
    })

  );
  return response.statusCode;
  //print (response.body);
}

 class _ContactPageState extends State<ContactPage> {
   @override
   Widget build(BuildContext context) {
     return Container(
       //debugShowCheckedModeBanner: false,
       child: Scaffold(
         appBar: AppBar(
           title: Text("Appointment"),
           backgroundColor: Colors.redAccent,
         ),
         body: Center(
          // padding: const EdgeInsets.fromLTRB(25.0,40,25,0),
           child: Container(
             //padding: EdgeInsets.only(left: 35,),
             padding: const EdgeInsets.fromLTRB(25.0,40,25,0),
             child: SingleChildScrollView(
               child: Form(
                 child: Column(
                   children: [
                     TextFormField(
                       controller: nameController,
                       decoration: const InputDecoration(
                         icon: const Icon(Icons.account_circle),
                         hintText: "Name",
                         labelText: "Name"
                       ),
                     ),
                     SizedBox(
                       height: 25,
                     ),
                     TextFormField(controller: subjectController,
                     decoration: const InputDecoration(
                       icon: Icon(Icons.subject_rounded),
                       hintText: "Subject",
                       labelText: "Subject"
                     ),
                     ),
                     SizedBox(
                       height: 25,
                     ),
                     TextFormField(
                       controller: emailController,
                       decoration: const InputDecoration(
                         icon: Icon(Icons.email),
                         hintText: "Email",
                         labelText: "Email",
                       ),
                     ),
                     SizedBox(height: 25,),
                     TextFormField(controller: messageController,
                     decoration: const InputDecoration(
                       icon: Icon(Icons.message),
                       hintText: "Date & Time",
                       labelText: "Input Appointment Details"
                     ),),
                     SizedBox(height: 30,),
                     ElevatedButton(
                         onPressed: (){
                           showDialog(
                             barrierDismissible: false,

                             context: context,
                             builder: (context) => AlertDialog(
                               backgroundColor: const Color.fromRGBO(66, 74, 96, 17),
                               content: Text(
                                 'Appointment Done',
                                 style: GoogleFonts.alike(
                                   textStyle: const TextStyle(
                                     color: Colors.white,
                                   ),
                                 ),
                               ),
                               title: Text(
                                 'Confirmation..!',
                                 style: GoogleFonts.alike(
                                   textStyle: const TextStyle(
                                     color: Colors.white,
                                   ),
                                 ),
                               ),
                               actions: [
                                 Row(
                                   mainAxisAlignment:
                                   MainAxisAlignment.spaceAround,
                                   children: [
                                     TextButton(
                                       onPressed: () {
                                         Navigator.push(
                                           context,
                                           MaterialPageRoute(builder: (context) => BottomNavBar()),
                                         );
                                       },
                                       child: Text(
                                         'Ok',
                                         style: GoogleFonts.alike(
                                           textStyle: const TextStyle(
                                             color: Colors.white,
                                           ),
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                               ],
                             ),
                           );
                           sendEmail();
                         },
                     child: Text("Send",
                     style: TextStyle(fontSize: 20),),
                     ),
                     SizedBox(height: 10,),
                     ElevatedButton(
                         onPressed: (){
                           _resetItem();
                         },
                         child: Text('Reset'),
                         style: ElevatedButton.styleFrom(
                             primary: Colors.redAccent,
                             //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                             textStyle: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold)),
                       ),


                   ],
                 ),
               ),
             ),
           ),
         )

       ),
     );
   }
 }
 