import 'package:cat_dog_detector/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: Home(),
      title: Text(
        'Cat vs. Dog',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white
        ),
      ),
      image: Image.asset('assets/cat.png'),
      backgroundColor: Colors.black, 
      loadingText: Text(
        'Loading',
        style: TextStyle(color: Colors.white),
      ),
      useLoader: true, loadingTextPadding: EdgeInsets.symmetric(), styleTextUnderTheLoader: TextStyle(color: Colors.white),
    );
  }
}
