import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class delete extends StatefulWidget {
  const delete({Key? key}) : super(key: key);

  @override
  _deleteState createState() => _deleteState();
}

class _deleteState extends State<delete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('DELETE FILES FROM DATABASE'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                color: Colors.amberAccent,
                child: Text(
                  'Delete files from database',
                  style: TextStyle(fontSize: 20.0,color: Colors.red),
                ),
                onPressed: () {
                  const url = 'https://console.firebase.google.com/project/eyedoctor-71a26/storage/eyedoctor-71a26.appspot.com/files';
                  launchURL(url);

                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
    await launch(url, forceSafariVC: false);
  } else {
    throw 'Could not launch $url';
  }
}
