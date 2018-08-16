library ngobrel_app.registration;
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'registration-verification.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegistrationPageState createState() => new _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  final _formKey = GlobalKey<FormState>();
  bool _formWasEdited = false;
  String _phoneNumber;

  String _validatePhoneNumber(String value) {
    _formWasEdited = true;
    _phoneNumber = value;
    return null;
  }

  Future<Null> _confirmNumber() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Before we start...'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('Please check again this number:'),
                new Text(
                  _phoneNumber,
                  style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                ),
                new Text('Continue if the number is correct'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('FIX'),
              onPressed: () {
                Navigator.of(context).pop();
              },
              textColor: Colors.red,
            ),

            new RaisedButton(
              child: new Text('CONTINUE'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationVerification(phoneNumber:_phoneNumber)),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Welcome',
            style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
          ),
          Text('Let\'s prepare some details before we start chatting. Please enter your phone number below:'),
          TextFormField(
            autofocus: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.phone),
            ),
            keyboardType: TextInputType.phone,
            validator: _validatePhoneNumber,
            // TextInputFormatters are applied in sequence.
            inputFormatters: <TextInputFormatter> [
              WhitelistingTextInputFormatter.digitsOnly,

            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  _confirmNumber();
                }
              },
              child: Text('START'),
            ),
          ),
        ],
      ),
    );
  }
}
