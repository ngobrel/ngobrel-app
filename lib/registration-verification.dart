library ngobrel_app.registration_verification;
import 'dart:async';

import 'package:flutter/material.dart';
import 'db.dart';
import 'settings.dart';

class RegistrationVerification extends StatefulWidget {
  RegistrationVerification({Key key, this.phoneNumber}) : super(key: key);

  final String phoneNumber;
  @override
  _RegistrationVerificationState createState() => new _RegistrationVerificationState();
}

class _RegistrationVerificationState extends State<RegistrationVerification> {

  final _formKey = GlobalKey<FormState>();
  bool _formWasEdited = false;
  String _verificationText;

  String _validateVerificationText(String value) {
    _formWasEdited = true;
    _verificationText = value;

    return null;
  }

  Future<Null> _verificationFailed() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Sorry...'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('Verification was failed. Please enter the correct verification code we have sent you via SMS'),
              ],
            ),
          ),
          actions: <Widget>[
            new RaisedButton(
              child: new Text('FIX'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _verify() async {
    if (_verificationText != '1234') {
      _verificationFailed();
    } else {
      var db = Db();
      db.populateData('10000000-0000-0000-0000-000000000001');
      var settings = Settings();
      settings.myId = '10000000-0000-0000-0000-000000000001';
      Navigator.pushNamedAndRemoveUntil(context, "/chatList", (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Form(
        key: _formKey,
        child:
          Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Verification',
              style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(8.0),),

            Text('We have sent you an SMS containing a verification code to ' + widget.phoneNumber + '.'),
            Padding(padding: EdgeInsets.all(8.0),),

            Text('Please type in the verification code below.'),
            Padding(padding: EdgeInsets.all(8.0),),

            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.edit),
              ),
              keyboardType: TextInputType.number,
              validator: _validateVerificationText,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(

                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text('CHANGE NUMBER'),
                  ),

                  RaisedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        _verify();
                      }
                    },
                    child: Text('VERIFY'),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}