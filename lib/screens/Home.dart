import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ImagePicker picker = ImagePicker();
  XFile _image = XFile('');

  getImage(ImageSource source) async {
    var image = await picker.pickImage(source: source);
    if (image == null) return null;
    setState(() {
      _image = XFile(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Text('TeachableMachine', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),),
            GestureDetector(
              onTap: () => getImage(ImageSource.camera),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(
                    vertical: 20
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey
                  ),
                  child: Text(
                    'Add photo from camera',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => getImage(ImageSource.gallery),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(
                      vertical: 20
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey
                  ),
                  child: Text(
                    'Add photo from gallery',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
