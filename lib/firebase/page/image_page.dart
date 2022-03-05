//import 'package:bzu_lodhran_off/firebase/api/firebase_apii.dart';
//import 'package:bzu_lodhran_off/firebase/model/firebase_file.dart';
//import 'package:database/api/firebase_api.dart';
//import 'package:database/api/firebase_apii.dart';
//import 'package:database/model/firebase_file.dart';
//import 'package:firebase_download_example/api/firebase_api.dart';
//import 'package:firebase_download_example/model/firebase_file.dart';
import 'package:eye_doctor/firebase/api/firebase_apii.dart';
import 'package:eye_doctor/firebase/model/firebase_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:image_downloader/image_downloader.dart';

class ImagePage extends StatelessWidget {
  final FirebaseFile file;

  const ImagePage({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isImage = ['.jpeg', '.jpg', '.pdf', '.doc', '.png'].any(file.name.contains);
    final isVideo = ['.Mp4', '.MPEG4', '.pdf', '.doc', '.png'].any(file.name.contains);

    return Scaffold(
      appBar: AppBar(
        title: Text(file.name),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () async {
              await FirebaseApii.downloadFile(file.ref);

              final snackBar = SnackBar(
                content: Text('Downloaded ${file.name}'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: isImage
          ? Image.network(
        file.url,
        height: double.infinity,
        fit: BoxFit.fill,
      )
          : Center(
        child: Text(
          'Cannot be displayed',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  void showToast(String s) {}

  void showLoadingDialog(BuildContext context) {}
}