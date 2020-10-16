import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 25.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[showLogo(), email(), password(), button(context)],
      ),
    );
  }

  Widget showLogo() {
    return Center(child: Image.asset('assets/logo.png'));
  }

  Widget email() {
    return Container(
      width: 350.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 15.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Mail',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(22.5)),
          ),
        ),
      ),
    );
  }

  Widget password() {
    return Container(
      width: 350.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(22.5)),
          ),
        ),
      ),
    );
  }

  Widget button(context) {
    return SizedBox(
      width: 300.0,
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/inicio");
        },
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        color: Color.fromRGBO(0, 83, 118, 1.0),
        child: const Text('INGRESAR',
            style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
