
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'registration.dart';


void main() => runApp(new NgobrelApp());

class NgobrelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return new MaterialApp(
      title: 'Ngobrel',
      home: Scaffold(

        body: RegistrationPage(title: 'Omama'),
      ),
    );
  }
}

